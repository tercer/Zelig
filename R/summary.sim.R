#' Method for summarizing simulations of quantities of interest
#'
#' Return a ``summary.sim'' object (typically for display)
#' @S3method summary sim
#' @usage \method{summary}{sim}(object, ...)
#' @param object a 'MI.sim' object
#' @param ... ignored parameters
#' @return a 'summarized.MI.sim' object
#' @export
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
summary.sim <- function(object, ...) {
  s <- object
  res <- list(model    = object$model,
              stats    = s$stats,
              titles   = s$titles,
              original = s$result,
              call     = s$call,
              zeligcall= s$zcall,
              x        = s$x,
              x1       = s$x1,
              num      = object$num
              )
  class(res) <- c(s$name, "summary.sim")
  res
}
