\name{print.splmm}
\alias{print.splmm}
\title{Print a short summary of a splmm object.}
\description{Prints a short summary of an \code{'splmm'} object
  comprising information about the nonzero fixed-effects coefficients and the nonzero random effect variance components.}
\usage{
\method{print}{splmm}(x, ...)
}

\arguments{
  \item{x}{a \code{'splmm'} object}
  \item{\dots}{not used}
}

\value{
No return value, a print-out of a \code{'splmm'} object's short summary is produced. 
}
%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{print.splmm}
}
\examples{
data(simulated_data)

set.seed(144)
fit = splmm(x=simulated_data$x,y=simulated_data$y,
z=simulated_data$z,grp=simulated_data$grp,
lam1=0.1,lam2=0.01, penalty.b="scad", penalty.L="scad")
print(fit)

\donttest{
data(cognitive)

x <- model.matrix(ravens ~schoolid+treatment+year+sex+age_at_time0
                  +height+weight+head_circ+ses+mom_read+mom_write
                  +mom_edu, cognitive)
z <- x

fit <- splmm(x=x,y=cognitive$ravens,z=z,grp=cognitive$id,lam1=0.1,
lam2=0.1,penalty.b="scad", penalty.L="scad")
print(fit)
}

}

