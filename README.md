# R Sandbox

This is a place to:

- Share R code used by the OFP-SAM team, mainly functions that do not have a
  home in a package (yet).

- Organize and communicate R code development and maintenance by the OFP-SAM
  team.

## OFP-SAM Packages

The OFP-SAM team maintains, to a varying degree, the following R packages
related to Multifan-CL:

Package                                                              | Maintainer | Created  | Last modified | Dependencies                                                                                                                                    | Purpose
-------------------------------------------------------------------- | ---------- | -------- | ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | -----------------------------------------------------------
[diags4MFCL](https://github.com/PacificCommunity/ofp-sam-diags4MFCL) | Nicholas   | 2020 Apr | 2022 Jan      | FLR4MFCL, frqit, data.table, ggplot2, ggthemes, magrittr, RColorBrewer                                                                          | Present MFCL results and diagnostics
[frqit](https://github.com/PacificCommunity/ofp-sam-frqit)           | Matt       | 2020 May | 2021 Jun      | FLR4MFCL                                                                                                                                        | Read and manipulate MFCL frq files
[FLR4MFCL](https://github.com/PacificCommunity/ofp-sam-flr4mfcl)     | Rob        | 2015 Mar | 2022 Nov      | FLCore                                                                                                                                          | Tame MULTIFAN-CL
[miWantemLuk](https://github.com/PacificCommunity/mi-wantem-luk)     | Rob        | 2021 Feb | 2022 Jul      | FLR4MFCL, chorddiag, hrbrthemes, networkD3, patchwork, r2d3, tidyverse, viridis                                                                 | Graphing and data visualisation
[R4MFCL](https://github.com/PacificCommunity/ofp-sam-r4mfcl)         | Arni       | 2011 May | 2022 Nov      | data.table, dplyr, ggmap, ggplot2, gridExtra, magrittr, mapdata, maps, reshape2, rlang, RODBC, RSQLite, scales, stringr, tidyr, viridis, xtable | Automate the running and analysis of MFCL stock assessments

This table was last updated on 24 Nov 2022.

## OFP-SAM Shiny apps

Finlay has developed two kinds of Shiny apps to browse OFP-SAM stock
assessments:

1. **Stepwise** app to plot individual or several models
2. **Grid** app to plot all grid models

Arni applied the Stepwise app to the YFT 2020 review, based on the SKJ 2022
Stepwise app.

Shiny apps for the YFT 2020 review:


Purpose         | App                                                                                | Source
--------------- | ---------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------
YFT 2020 review | arni-magnusson/[stepwise-2020](https://arni-magnusson.shinyapps.io/stepwise-2020/) | yft-review-analysis/R/shiny/[stepwise-2020](https://github.com/PacificCommunity/ofp-sam-yft-review-analysis/tree/main/R/shiny/stepwise-2020)
YFT 2020 review | arni-magnusson/[john](https://arni-magnusson.shinyapps.io/john/)                   |

- https://arni-magnusson.shinyapps.io/nick/
