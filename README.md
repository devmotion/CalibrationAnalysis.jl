# CalibrationAnalysis.jl: Calibration Analysis of Probabilistic Models in Julia

This folder contains the source code of the paper *CalibrationAnalysis.jl: Calibration Analysis of Probabilistic Models in Julia* by Widmann, Lindsten, and Zachariah.

## Requirements

The following software is required for rendering the paper, i.e., creating a PDF version of it:

  - Julia 1.8.1
  - Quarto 1.1.242
  - make
  - latexmk with pdflatex

Julia can be installed with `juliaup`:

```shell
$ juliaup add 1.8.1

$ juliaup default 1.8.1
```

Alternatively, it can be downloaded from the [Julia website](https://julialang.org/downloads/) and installed manually.

Quarto can be downloaded from [Github](https://github.com/quarto-dev/quarto-cli/releases/tag/v1.1.242).

On Ubuntu, the necessary LaTeX packages can be installed with

```shell
sudo apt-get install latexmk lmodern texlive-fonts-extra texlive-fonts-recommended texlive-latex-base texlive-latex-extra
```

## Render paper

The paper can be rendered with

```shell
make
```

This command will create a PDF `paper.pdf` and all intermediate files, such as `paper.tex` and figures, that it is compiled from.

These intermediate files can be generated separately with

```shell
make paper.tex
```

The resulting `paper.tex` can then be compiled manually in a second step.
