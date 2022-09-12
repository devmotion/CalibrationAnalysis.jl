.PHONY: all clean distclean
all: paper.pdf

paper.tex: paper.qmd Manifest.toml Project.toml $(wildcard _extensions/quarto-journals/jss/**)
	julia --startup-file=no --project=. setup.jl
	julia --startup-file=no --project=. render.jl

paper.pdf: paper.tex jss.bst jss.cls jsslogo.jpg diagram.tex refs.bib julia.bib
	latexmk -bibtex -pdf paper.tex

clean:
	latexmk -c paper

distclean: clean
	-rm paper.pdf
