\name{zelig}
\alias{zelig}
\title{Estimating a Statistical Model}
\usage{
  zelig(formula, model, data, ..., by = NULL, cite = T)
}
\arguments{
  \item{formula}{a symbolic representation of the model to
  be estimated, in the form \code{y \~\, x1 + x2}, where
  \code{y} is the dependent variable and \code{x1} and
  \code{x2} are the explanatory variables, and \code{y},
  \code{x1}, and \code{x2} are contained in the same
  dataset.  (You may include more than two explanatory
  variables, of course.)  The \code{+} symbol means
  ``inclusion'' not ``addition.'' You may also include
  interaction terms and main effects in the form
  \code{x1*x2} without computing them in prior steps;
  \code{I(x1*x2)} to include only the interaction term and
  exclude the main effects; and quadratic terms in the form
  \code{I(x1^2)}}

  \item{model}{the name of a statistical model.  Type
  \code{help.zelig("models")} to see a list of currently
  supported models}

  \item{data}{the name of a data frame containing the
  variables referenced in the formula, or a list of
  multiply imputed data frames each having the same
  variable names and row numbers (created by \code{mi})}

  \item{...}{additional arguments passed to \code{zelig},
  depending on the model to be estimated}

  \item{by}{a factor variable contained in \code{data}.
  Zelig will subset the data frame based on the levels in
  the \code{by} variable, and estimate a model for each
  subset.  This a particularly powerful option which will
  allow you to save a considerable amount of effort.  For
  example, to run the same model on all fifty states, you
  could type: \code{z.out <- zelig(y ~ x1 + x2, data =
  mydata, model = "ls", by = "state")} You may also use
  \code{by} to run models using MatchIt subclass}

  \item{cite}{If is set to "TRUE" (default), the model
  citation will be}
}
\value{
  Depending on the class of model selected, \code{zelig}
  will return an object with elements including
  \code{coefficients}, \code{residuals}, and \code{formula}
  which may be summarized using \code{summary(z.out)} or
  individually extracted using, for example,
  \code{z.out\$coefficients}.  See the specific models
  listed above for additional output values, or simply type
  \code{names(z.out)}.
}
\description{
  The zelig command estimates a variety of statistical
  models.  Use \code{zelig} output with \code{setx} and
  \code{sim} to compute quantities of interest, such as
  predicted probabilities, expected values, and first
  differences, along with the associated measures of
  uncertainty (standard errors and confidence intervals).
}
\author{
  Matt Owen \email{mowen@iq.harvard.edu}, Kosuke Imai,
  Olivia Lau, and Gary King Maintainer: Matt Owen
  \email{mowen@iq.harvard.edu}
}
\keyword{package}

