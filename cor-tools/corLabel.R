#' Correlation Labels
#'
#' Label correlations and produce a frequency table.
#'
#' @param x a correlation matrix or a filename.
#'
#' @return Data frame with label counts.
#'
#' @seealso
#' \code{\link{corFilter}} filters correlation matrix to show highest
#' correlations.
#'
#' \code{\link{corHist}} plots a correlation histogram and produces a frequency
#' table.
#'
#' @examples
#' source("five.R")
#' corLabel(five)
#'
#' @export

corLabel <- function(x)
{
  ## Get correlations
  if(is.character(x))
    x <- read.table(x, header=TRUE, row.names=1, check.names=FALSE)
  x <- as.matrix(x)
  x <- x[upper.tri(x)]

  ## Convert to labels
  A <- character(length(x))
  A[x >= -1.000 & x < -0.999] <- "---"
  A[x >= -0.999 & x < -0.990] <- "--"
  A[x >= -0.990 & x < -0.900] <- "-"
  A[x >= -0.900 & x <= 0.900] <- "."
  A[x >   0.900 & x <= 0.990] <- "+"
  A[x >   0.990 & x <= 0.999] <- "++"
  A[x >   0.999 & x <= 1.000] <- "+++"
  lab <- c("+++", "++", "+", ".", "-", "--", "---")
  rng <- c("(0.999, 1]", "(0.99, 0.999]", "(0.9, 0.99]", "[-0.9, 0.9]",
           "(-0.9, -0.99]", "(-0.99, -0.999]", "(-0.999, -1]")
  A <- ordered(A, levels=lab)

  ## Prepare frequency table
  out <- as.data.frame(unclass(table(A)))
  out <- data.frame(Range=rng, Label=lab, Freq=out[[1]], row.names=NULL)

  out
}
