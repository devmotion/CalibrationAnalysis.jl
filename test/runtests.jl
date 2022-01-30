using CalibrationAnalysis
using Plots
using StableRNGs

using Test

@testset "CalibrationAnalysis.jl" begin
    # We only check that a simple example runs without errors
    # Otherwise we rely on tests in CalibrationErrors, CalibrationTests, and
    # ReliabilityDiagrams
    rng = StableRNG(8317)
    n = 100
    confidence = rand(rng, n)
    outcomes = rand(rng, Bool, n)

    # ReliabilityDiagrams.jl
    reliabilityplot(confidence, outcomes) # Plots
    reliability(confidence, outcomes) # Makie

    # CalibrationErrors.jl
    ece = ECE(UniformBinning(10))
    @test ece(confidence, outcomes) > 0

    kernel = ExponentialKernel() ⊗ WhiteKernel()
    skce = SKCE(kernel)
    skceb = SKCE(kernel; unbiased=false)
    @test skce(confidence, outcomes) < skceb(confidence, outcomes)
    @test skceb(confidence, outcomes) > 0

    # CalibrationTests.jl
    @test pvalue(StableRNG(1447), ConsistencyTest(ece, confidence, outcomes)) < 0.05
    @test pvalue(StableRNG(9483), AsymptoticSKCETest(kernel, confidence, outcomes)) < 0.05
end
