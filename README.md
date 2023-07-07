# CalibrationAnalysis.jl

Analysis of calibration of probabilistic predictive models.

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://devmotion.github.io/CalibrationAnalysis.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://devmotion.github.io/CalibrationAnalysis.jl/dev)
[![Build Status](https://github.com/devmotion/CalibrationAnalysis.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/devmotion/CalibrationAnalysis.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/devmotion/CalibrationAnalysis.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/devmotion/CalibrationAnalysis.jl)
[![Coverage](https://coveralls.io/repos/github/devmotion/CalibrationAnalysis.jl/badge.svg?branch=main)](https://coveralls.io/github/devmotion/CalibrationAnalysis.jl?branch=main)
[![Code Style: Blue](https://img.shields.io/badge/code%20style-blue-4495d1.svg)](https://github.com/invenia/BlueStyle)
[![Aqua QA](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)

This is a suite for analyzing calibration of probabilistic predictive models written in Julia.

**It is available for use in Julia, [Python](https://github.com/devmotion/pycalibration), and [R](https://github.com/devmotion/rcalibration).**

The package supports:
- [plotting reliability diagrams](https://github.com/devmotion/ReliabilityDiagrams.jl)
- [estimating calibration errors](https://github.com/devmotion/CalibrationErrors.jl)
- [performing calibration tests](https://github.com/devmotion/CalibrationTests.jl)

## Talk at JuliaCon 2021

[![Calibration analysis of probabilistic models in Julia](http://img.youtube.com/vi/PrLsXFvwzuA/0.jpg)](http://www.youtube.com/watch?v=PrLsXFvwzuA)

The slides of the talk are available as [Pluto notebook](https://talks.widmann.dev/2021/07/Calibration/).

## Citing

If you use CalibrationAnalysis.jl as part of your research, teaching, or other activities, please consider citing the following publications:

Widmann, D., Lindsten, F., & Zachariah, D. (2019). [Calibration tests in multi-class
classification: A unifying framework](https://proceedings.neurips.cc/paper/2019/hash/1c336b8080f82bcc2cd2499b4c57261d-Abstract.html). In
*Advances in Neural Information Processing Systems 32 (NeurIPS 2019)* (pp. 12257–12267).

Widmann, D., Lindsten, F., & Zachariah, D. (2021).
[Calibration tests beyond classification](https://openreview.net/forum?id=-bxf89v3Nx).
*International Conference on Learning Representations (ICLR 2021)*.

## Acknowledgements

This work was financially supported by the Swedish Research Council via the projects *Learning of Large-Scale Probabilistic Dynamical Models* (contract number: 2016-04278), *Counterfactual Prediction Methods for Heterogeneous Populations* (contract number: 2018-05040), and *Handling Uncertainty in Machine Learning Systems* (contract number: 2020-04122), by the Swedish Foundation for Strategic Research via the project *Probabilistic Modeling and Inference for Machine Learning* (contract number: ICA16-0015), by the Wallenberg AI, Autonomous Systems and Software Program (WASP) funded by the Knut and Alice Wallenberg Foundation, and by ELLIIT.