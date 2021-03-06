#' Default Method for Replicating Statistics
#'
#' Replicate a simulation
#' @usage \method{repl}{default}(object, data=NULL, ...)
#' @S3method repl default
#' @param object an object to replicate
#' @param data a data.frame
#' @param ... ignored parameters
#' @return a replicated object
#' @author Kosuke Imai and Olivia Lau \email{mowen@@iq.harvard.edu}
repl.default <- function(object, data=NULL, ...) {
  if (!is.null(data))
    obectj$call$data <- data

  eval(object$call$data, sys.parent())
}
