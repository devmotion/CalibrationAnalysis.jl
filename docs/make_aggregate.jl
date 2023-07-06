using MultiDocumenter

mktempdir() do clonedir
    docs = [
        MultiDocumenter.MultiDocRef(;
            upstream=joinpath(clonedir, "Home"),
            path="Overview",
            name="Home",
            giturl="https://github.com/devmotion/CalibrationAnalysis.jl.git",
        ),
        MultiDocumenter.MultiDocRef(;
            upstream=joinpath(clonedir, "CalibrationErrors"),
            path="CalibrationErrors",
            name="CalibrationErrors",
            giturl="https://github.com/devmotion/CalibrationErrors.jl.git",
        ),
        MultiDocumenter.MultiDocRef(;
            upstream=joinpath(clonedir, "ReliabilityDiagrams"),
            path="ReliabilityDiagrams",
            name="ReliabilityDiagrams",
            giturl="https://github.com/devmotion/ReliabilityDiagrams.jl.git",
        ),
    ]

    outpath = joinpath(@__DIR__, "build")
    MultiDocumenter.make(
        outpath,
        docs;
        search_engine=MultiDocumenter.SearchConfig(;
            index_versions=["stable"], engine=MultiDocumenter.FlexSearch
        ),
        rootpath=get(ENV, "MULTIDOCS_ROOTPATH", "/"),
    )
end
