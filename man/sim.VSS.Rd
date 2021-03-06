\name{sim.VSS}
\alias{sim.VSS}
\alias{VSS.simulate}
\alias{VSS.sim}
\title{ create VSS like data}
\description{Simulation is one of most useful techniques in statistics and psychometrics.  Here we simulate a correlation matrix with a simple structure composed of a specified number of factors.  Each item is assumed to have complexity one.  See \code{\link{circ.sim}} and \code{\link{item.sim}} for alternative simulations.
}
\usage{
sim.VSS(ncases=1000, nvariables=16, nfactors=4, meanloading=.5,dichot=FALSE,cut=0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ncases}{ number of simulated subjects }
  \item{nvariables}{ Number of variables }
  \item{nfactors}{ Number of factors to generate }
  \item{meanloading}{with a mean loading }
  \item{dichot}{dichot=FALSE give continuous variables, dichot=TRUE gives dichotomous variables}
  \item{cut}{if dichotomous = TRUE, then items with values > cut are assigned 1, otherwise 0.}
}

\value{a ncases x nvariables  matrix 
}

\author{ William Revelle}

\seealso{ \code{\link{VSS}}, \code{\link{ICLUST}} }
\examples{
\dontrun{
simulated <- sim.VSS(1000,20,4,.6)
vss <- VSS(simulated,rotate="varimax")
VSS.plot(vss)
}

}
\keyword{ multivariate }% at least one, from doc/KEYWORDS
\keyword{ models }% __ONLY ONE__ keyword per line
\keyword{ datagen }% __ONLY ONE__ keyword per line
