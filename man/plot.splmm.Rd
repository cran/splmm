\name{plot.splmm}
\alias{plot.splmm}
\title{Plot the tuning results of a \code{splmm.tuning} object}
\description{This function inputs an \code{splmm.tuning} object and plot the model selection criterion values over the tuning parameters grid.}
\usage{
\method{plot}{splmm}(x, ...)
}

\arguments{
  \item{x}{a \code{'splmm.tuning'} object}
  \item{\dots}{not used}
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{plot.splmm}
}
\examples{

\donttest{
data(cognitive)

x <- model.matrix(ravens ~ schoolid+treatment+relyear+sex+age_at_time0+height
+weight+head_circ+ses1+readtest+writetest+yrsofsch, cognitive)
z <- model.matrix(ravens ~ schoolid+treatment+relyear, cognitive)

## Tuning over lambda1 grid
lam1 = seq(0.01,0.05,0.01)
lam2 = 0.1
fit1 <-splmmTuning(x=x,y=cognitive$ravens,z=z,grp=cognitive$id,lam1=lam1,
lam2=lam2,penalty.b="scad", penalty.L="scad")
plot.splmm(fit1)
}

}

