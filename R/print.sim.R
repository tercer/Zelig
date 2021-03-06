#' Print values of `sim' objects
#' 
#' This function is currently unimplemented, and included for future development
#' @usage \method{print}{sim}(x, ...)
#' @S3method print sim
#' @param x a `sim' object (ignored)
#' @param ... ignored parameters
#' @return NULL (invisibly)
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
print.sim <- function(x, ...) {
  o <- x
  class(o) <- 'list'
  print(o)
}
