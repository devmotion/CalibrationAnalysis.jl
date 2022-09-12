using CondaPkg

# Render document
CondaPkg.withenv() do
    python = CondaPkg.which("python")
    run(addenv(`quarto render paper.qmd --to jss-latex`, "QUARTO_PYTHON" => python))
end
