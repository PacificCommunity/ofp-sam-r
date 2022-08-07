#' Correlation Filter
#'
#' Filter correlation matrix to show highest correlations.
#'
#' @param x is a correlation matrix or a filename.
#' @param level filter level.
#' @param sort whether to sort the resulting data frame by absolute correlation.
#' @param names parameter names, the default is \code{rownames(x)}.
#'
#' @details
#' The resulting data frame includes all correlations \code{|r| >= level}.
#'
#' @return
#' Data frame containing three columns: \code{Par1}, \code{Par2}, and
#' \code{Corr}.
#'
#' @seealso
#' \code{\link{corHist}} plots a correlation histogram and produces a frequency
#' table.
#'
#' \code{\link{corLabel}} labels correlations and produces a frequency table.
#'
#' @examples
#' source("five.R")
#' corFilter(five)
#' corFilter(five, level=0.99)
#' corFilter(five, names=c("alpha","beta","gamma","delta","epsilon"))
#'
#' # Convert all correlations to three-column format, with no filter or sorting
#' corFilter(five, level=0, sort=FALSE)
#'
#' @export

corFilter <- function(x, level=0.9, sort=TRUE, names=NULL)
{
  ## Name all objects 'x' to save memory

  ## Get correlations
  if(is.character(x) && file.exists(x))
    x <- read.table(x, header=TRUE, row.names=1, check.names=FALSE)
  x <- as.matrix(x)
  if(is.null(names))
  {
    names <- if(!is.null(rownames(x))) rownames(x) else as.character(1:ncol(x))
  }

  ## Construct data frame
  x <- data.frame(Par1=names[col(x)[lower.tri(x)]],
                  Par2=names[row(x)[lower.tri(x)]],
                  Corr=x[lower.tri(x)])

  ## Filter and sort
  x <- x[abs(x$Corr) >= level,]
  if(sort)
    x <- x[order(-abs(x$Corr)),]
  row.names(x) <- NULL

  x
}
