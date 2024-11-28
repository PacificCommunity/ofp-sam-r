# R Sandbox

This is a place to:

- Share R code used by the OFP-SAM team, mainly functions that do not have a
  home in a package (yet).

- Organize and communicate R code development and maintenance by the OFP-SAM
  team.

## OFP-SAM Packages

The OFP-SAM team maintains, to a varying degree, the following R packages
related to MULTIFAN-CL:

Package                                                              | Maintainer | Created  | Last modified | Dependencies                                                                                                                                    | Purpose
-------------------------------------------------------------------- | ---------- | -------- | ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | -----------------------------------------------------------
[diags4MFCL](https://github.com/PacificCommunity/ofp-sam-diags4MFCL) | Nicholas   | 2020 Apr | 2023 Oct      | FLR4MFCL, frqit, data.table, ggplot2, ggthemes, magrittr, RColorBrewer                                                                          | Present MFCL results and diagnostics
[condor](https://github.com/PacificCommunity/ofp-sam-condor)         | Arni       | 2023 Feb | 2024 Nov      | ssh                                                                                                                                             | Interact with Condor from R via SSH
[frqit](https://github.com/PacificCommunity/ofp-sam-frqit)           | Matt       | 2020 May | 2021 Jun      | FLR4MFCL                                                                                                                                        | Read and manipulate MFCL frq files
[FLR4MFCL](https://github.com/PacificCommunity/ofp-sam-flr4mfcl)     | Rob        | 2015 Mar | 2024 Nov      | FLCore                                                                                                                                          | Tame MULTIFAN-CL
[miWantemLuk](https://github.com/PacificCommunity/mi-wantem-luk)     | Rob        | 2021 Feb | 2023 Aug      | FLR4MFCL, chorddiag, hrbrthemes, networkD3, patchwork, r2d3, tidyverse, viridis                                                                 | Graphing and data visualisation
[R4MFCL](https://github.com/PacificCommunity/ofp-sam-r4mfcl)         | Arni       | 2011 May | 2023 Sep      | data.table, dplyr, ggmap, ggplot2, gridExtra, magrittr, mapdata, maps, reshape2, rlang, RODBC, RSQLite, scales, stringr, tidyr, viridis, xtable | Automate the running and analysis of MFCL stock assessments

This table was last updated on 28 Nov 2024.

## OFP-SAM Shiny apps

Finlay has developed two kinds of Shiny apps to browse OFP-SAM stock
assessments:

1. **Stepwise** app to plot individual or several models
2. **Grid** app to plot all grid models

Arni adapted the Stepwise app for the YFT 2020 review, based on the SKJ 2022
Stepwise app. Jemery and Arni then adapted the Stepwise app to the BET and YFT
2023 assessments.

The following repositories contain OFP-SAM Shiny apps for stock assessments:

Purpose                | Repository                                                                                      | Online
---------------------- | ----------------------------------------------------------------------------------------------- | ------
Development            | https://github.com/PacificCommunity/ofp-sam-shinyMFCL                                           | -
BET 2020 sensitivities | https://github.com/PacificCommunity/ofp-sam-shinyMFCL/tree/main/examples/bet_2020_sensitivities | -
BET 2023 stepwise      | https://github.com/PacificCommunity/ofp-sam-bet-2023-shiny                                      | -
SKJ 2022 sensitivities | https://github.com/PacificCommunity/ofp-sam-shinyMFCL/tree/main/examples/skj_2022_reg5_sens     | -
SKJ 2022 stepwise      | https://github.com/PacificCommunity/ofp-sam-shinyMFCL/tree/main/examples/skj_2022_stepwise      | -
YFT 2020 review        | https://github.com/PacificCommunity/ofp-sam-shinyMFCL/tree/main/examples/yft_2020_review        | -
YFT 2023 stepwise      | https://github.com/PacificCommunity/ofp-sam-yft-2023-shiny                                      | -
