# R Sandbox

This is a place to share R functions with the OFP-SAM team, which do not have a
home in a package (yet).

## cor-tools

The [cor-tools](cor-tools) folder contains functions to diagnose correlation
matrices:

* [corHist](cor-tools/corHist.R) - plot a correlation histogram and produce a frequency table
* [corLabel](cor-tools/corLabel.R) - label correlations and produce a frequency table

Install:

```
source("https://raw.githubusercontent.com/PacificCommunity/ofp-sam-r-sandbox/main/cor-tools.R")
```

Run:

```
corHist(five)
corLabel(five)
```

## OFP-SAM Packages

The OFP-SAM team maintains, to a varying degree, the following R packages:

Package                                                              | Maintainer              | Last modified | Dependencies                                                                                                                                    | Purpose
-------------------------------------------------------------------- | ----------------------- | ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | -----------------------------------------------------------
[diags4MFCL](https://github.com/PacificCommunity/ofp-sam-diags4MFCL) | Nicholas Ducharme-Barth | 2022 Jan      | FLR4MFCL, frqit, data.table, ggplot2, ggthemes, magrittr, RColorBrewer                                                                          | Present MFCL results and diagnostics
[frqit](https://github.com/PacificCommunity/ofp-sam-frqit)           | Matthew Vincent         | 2021 Jun      | FLR4MFCL                                                                                                                                        | Read and manipulate MFCL frq files
[FLR4MFCL](https://github.com/PacificCommunity/ofp-sam-flr4mfcl)     | Robert Scott            | 2022 Jul      | FLCore                                                                                                                                          | Tame MULTIFAN-CL
[miWantemLuk](https://github.com/PacificCommunity/mi-wantem-luk)     | Robert Scott            | 2022 Jul      | FLR4MFCL, chorddiag, hrbrthemes, networkD3, patchwork, r2d3, tidyverse, viridis                                                                 | Graphing and data visualisation
[R4MFCL](https://github.com/PacificCommunity/ofp-sam-r4mfcl)         | Matthew Vincent         | 2020 Jul      | data.table, dplyr, ggmap, ggplot2, gridExtra, magrittr, mapdata, maps, reshape2, rlang, RODBC, RSQLite, scales, stringr, tidyr, viridis, xtable | Automate the running and analysis of MFCL stock assessments

The 'last modified' and 'dependencies' columns are subject to change. They were last updated on 6 Aug 2022.
