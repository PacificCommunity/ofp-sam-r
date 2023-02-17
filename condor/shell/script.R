#!/usr/bin/Rscript

fm <- lm(dist~speed, cars)
results <- trimws(capture.output(summary(fm)))
writeLines(results, "results.txt")
