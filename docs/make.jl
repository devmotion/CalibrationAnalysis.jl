using CalibrationAnalysis
using Documenter

DocMeta.setdocmeta!(CalibrationAnalysis, :DocTestSetup, :(using CalibrationAnalysis); recursive=true)

makedocs(;
    modules=[CalibrationAnalysis],
    authors="David Widmann",
    repo="https://github.com/devmotion/CalibrationAnalysis.jl/blob/{commit}{path}#{line}",
    sitename="CalibrationAnalysis.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://devmotion.github.io/CalibrationAnalysis.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
    checkdocs=:exports,
    strict=true,
)

deploydocs(;
    repo="github.com/devmotion/CalibrationAnalysis.jl",
    devbranch="main",
)
