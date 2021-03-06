#' Get Labels from \code{mi} Object
#' 
#' Find a suitable set of labels for titling each individual \code{mi} object.
#' @note This function is primarily used internally by Zelig to keep track of
#'   the \code{data.frame}'s produced by \code{mi} objects.
#' @S3method labels mi
#' @usage \method{labels}{mi}(object, ...)
#' @param object an \code{mi} object
#' @param ... ignored parameters
#' @return a character-string specifying all the labels
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
labels.mi <- function (object, ...) {
  env <- object$state
  iter <- get('iter', envir=env)

  Reset(object)

  LABELS <- NULL

  while ({key <- NextLabel(object); !is.null(key)}) {
    Name <- key[[1]]
    Constraints <- key[-1]

    if (length(Constraints) == 0) {
      LABELS <- c(LABELS, Name)
      next
    }

    label <- paste(names(Constraints), Constraints, sep='=', collapse=", ")
    label <- sprintf("%s (%s)", Name, label)
    LABELS <- c(LABELS, label)
  }

  # Restore iterator to previous position
  assign('iter', iter, env)

  LABELS
}
