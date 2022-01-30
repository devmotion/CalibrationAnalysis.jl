using CalibrationAnalysis
using Plots
using Test

@testset "CalibrationAnalysis.jl" begin
    # We only check that a simple example runs without errors
    # Otherwise we run downstream tests
    n = 100
    confidence = rand(n)
    outcomes = rand(Bool, n)

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
    @test pvalue(ConsistencyTest(ece, confidence, outcomes)) < 0.05
    @test pvalue(AsymptoticSKCETest(kernel, confidence, outcomes)) < 0.05
end
