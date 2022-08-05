#' Correlation Labels
#'
#' Label correlations and produce a frequency table.
#'
#' @param x is a correlation matrix or a filename.
#'
#' @return Data frame with label counts.
#'
#' @seealso
#' \code{corHist} plots a correlation histogram.
#'
#' @examples
#' source("five.R")
#' corLabel(five)
#'
#' @export

corLabel <- function(x)
{
  ## Get correlations
  if(is.character(x) && file.exists(x))
    x <- read.table(corfile, header=TRUE, row.names=1, check.names=FALSE)
  x <- as.matrix(x)
  r <- x[upper.tri(x)]

  ## Convert to labels
  A <- character(length(r))
  A[r >= -1.000 & r < -0.999] <- "---"
  A[r >= -0.999 & r < -0.990] <- "--"
  A[r >= -0.990 & r < -0.900] <- "-"
  A[r >= -0.900 & r <= 0.900] <- "."
  A[r >   0.900 & r <= 0.990] <- "+"
  A[r >   0.990 & r <= 0.999] <- "++"
  A[r >   0.999 & r <= 1.000] <- "+++"
  lab <- c("+++", "++", "+", ".", "-", "--", "---")
  rng <- c("(0.999, 1]", "(0.99, 0.999]", "(0.9, 0.99]", "[-0.9, 0.9]",
           "(-0.9, -0.99]", "(-0.99, -0.999]", "(-0.999, -1]")
  A <- ordered(A, levels=lab)

  ## Prepare frequency table
  out <- as.data.frame(unclass(table(A)))
  out <- data.frame(Range=rng, Label=lab, Freq=out[[1]], row.names=NULL)

  out
}
