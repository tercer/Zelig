#' Find the Zelig package that a particular model belong to
#'
#' This method is used to help transition Zelig v3.5 users to Zelig v4
#' @param model a character-string specifying a Zelig model
#' @param quiet a logical indicating whether to display messages and warnings
#' @param ... ignored parameters
#' @return NA or a character-string specifying the name of the package which 
#' contains a specific model
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
get.package <- function (model, quiet=TRUE, ...) {

  # Bad variable-types return NULL
  if (is.null(model))
    return(NA)

  else if (!is.character(model))
    return(NA)

  else if (length(model) != 1)
    return (NA)

  # Create list (auto-generated using another script.
  # This is a copy-and-paster of that below
  descr <- c(
    gamma = "Zelig",
    logit = "Zelig",
    ls = "Zelig",
    negbinom = "Zelig",
    normal = "Zelig",
    poisson = "Zelig",
    probit = "Zelig",

    blogit = "ZeligMultivariate",
    bprobit = "ZeligMultivariate",
    logit.gam = "ZeligGAM",
    normal.gam = "ZeligGAM",
    poisson.gam = "ZeligGAM",
    probit.gam = "ZeligGAM",

    gamma.gee = "ZeligGEE",
    logit.gee = "ZeligGEE",
    normal.gee = "ZeligGEE",
    poisson.gee = "ZeligGEE",
    probit.gee = "ZeligGEE",

    gamma.mixed = "ZeligMixed",
    logit.mixed = "ZeligMixed",
    ls.mixed = "ZeligMixed",
    normal.mixed = "ZeligMixed",
    poisson.mixed = "ZeligMixed",
    probit.mixed = "ZeligMixed",

    mlogit = "ZeligMultinomial",
    mprobit = "ZeligMultinomial",

    ologit = "ZeligOrdinal",
    oprobit = "ZeligOrdinal",

    gamma.survey = "ZeligSurvey",
    logit.survey = "ZeligSurvey",
    normal.survey = "ZeligSurvey",
    poisson.survey = "ZeligSurvey",
    probit.survey = "ZeligSurvey",

    factor.bayes = "ZeligBayesian",
    logit.bayes = "ZeligBayesian",
    mlogit.bayes = "ZeligBayesian",
    normal.bayes = "ZeligBayesian",
    oprobit.bayes = "ZeligBayesian",
    poisson.bayes = "ZeligBayesian",
    probit.bayes = "ZeligBayesian",

    aov = "ZeligLeastSquares",
    sur = "ZeligLeastSquares",
    twosls = "ZeligLeastSquares",
    threesls = "ZeligLeastSquares",

    cloglog.net = "ZeligNetwork",
    gamma.net = "ZeligNetwork",
    logit.net = "ZeligNetwork",
    ls.net = "ZeligNetwork",
    negbinom.net = "ZeligNetwork",
    normal.net = "ZeligNetwork",
    poisson.net = "ZeligNetwork",
    probit.net = "ZeligNetwork"
  )

  if (model %in% names(descr))
    descr[[model]]

  else
    NA
}
