# Install packages
using Pkg: Pkg
Pkg.instantiate()

# Install jupyter
using CondaPkg: CondaPkg
CondaPkg.resolve()

# Set up IJulia
CondaPkg.withenv() do
    python = CondaPkg.which("python")
    withenv(
        "PYTHON" => CondaPkg.which("python"),
        "JUPYTER" => CondaPkg.which("jupyter"),
        "IJULIA_NODEFAULT_KERNEL" => "true",
    ) do
        Pkg.build("IJulia")
    end
end
using IJulia: IJulia
IJulia.installkernel(
    "jss-calibrationanalysis", "--startup-file=no", "--project=$(@__DIR__)"
)
