#' Correlation Histogram
#'
#' Plot a histogram of parameter correlations and produce a frequency table.
#'
#' @param x is a correlation matrix or a filename.
#'
#' @return Data frame with bin counts.
#'
#' @seealso
#' \code{\link{corLabel}} labels correlations and produces a frequency table.
#'
#' @examples
#' source("five.R")
#' corHist(five)
#'
#' @export

corHist <- function(x)
{
  ## Get correlations
  if(is.character(x) && file.exists(x))
    x <- read.table(corfile, header=TRUE, row.names=1, check.names=FALSE)
  x <- as.matrix(x)
  r <- x[upper.tri(x)]

  ## Plot histogram
  xlab <- expression(paste("Corr(", hat(theta)[i], ",", hat(theta)[j], ")"))
  out <- hist(r, breaks=seq(-1.0, 1.0, 0.1), main=NULL, xlab=xlab)

  ## Prepare frequency table
  out <- as.data.frame(out[c("mids", "counts")])
  out <- out[rev(seq(nrow(out))),]
  names(out) <- toTitleCase(names(out))
  row.names(out) <- NULL

  out
}
