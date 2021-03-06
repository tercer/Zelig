\name{register}
\alias{register}
\title{Generic Method for Registering Methods to Zelig Objects
This function is used internally by Zelig to produce a list of methods to
reproduce for particular Zelig models.}
\usage{
  register(obj, ...)
}
\arguments{
  \item{obj}{a 'zelig' object}

  \item{...}{typically ignored parameters}
}
\value{
  a character-vector specifying the names of generic
  methods that can be applied to the specified Zelig model
}
\description{
  Generic Method for Registering Methods to Zelig Objects
  This function is used internally by Zelig to produce a
  list of methods to reproduce for particular Zelig models.
}
\note{
  This function is used exlusively internally by Zelig
}
\author{
  Matt Owen \email{mowen@iq.harvard.edu}
}

