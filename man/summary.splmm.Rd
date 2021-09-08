\name{summary.splmm}
\alias{summary.splmm}
\title{Summarize an 'splmm' object}
\description{Providing an elaborate summary of a \code{'splmm'} object.}
\usage{
\method{summary}{splmm}(object, ...)
}

\arguments{
  \item{object}{a \code{'splmm'} object}
  \item{\dots}{not used.}
}
\value{
No return value, a print-out of a \code{'splmm'} object's detailed summary is produced. 
}
\details{This functions shows a detailed summary of a \code{'splmm'} object.}

\examples{
data(simulated_data)

set.seed(144)
fit = splmm(x=simulated_data$x,y=simulated_data$y,
z=simulated_data$z,grp=simulated_data$grp,
lam1=0.1,lam2=0.01, penalty.b="scad", penalty.L="scad")
summary(fit)

\donttest{
data(cognitive)

x <- model.matrix(ravens ~schoolid+treatment+year+sex+age_at_time0
                  +height+weight+head_circ+ses+mom_read+mom_write
                  +mom_edu, cognitive)
z <- x

fit <- splmm(x=x,y=cognitive$ravens,z=z,grp=cognitive$id,lam1=0.1,lam2=0.1,
penalty.b="scad", penalty.L="scad")
summary(fit)
}
}

\keyword{methods}
