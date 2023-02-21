data <- read.table("data.txt", header=TRUE)

fm <- lm(dist~speed, data)
results <- trimws(capture.output(summary(fm)))
writeLines(results, "results.txt")
