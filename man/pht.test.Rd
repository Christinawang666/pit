% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pht.R
\name{pht.test}
\alias{pht.test}
\title{Random projection independence test}
\usage{
pht.test(x, y, num.permutations = 99, seed = 1)
}
\arguments{
\item{x}{a numeric vector or matrix}

\item{y}{a numeric vector or matrix}

\item{num.permutations}{the number of permutation replications. 
When \code{num.permutations = 0}, the function just returns the statistic. 
Default: \code{num.permutations = 199}.}
}
\value{
If \code{num.permutations > 0}, the function returns a \code{htest} class object containing the following components:
If \code{num.permutations = 0}, the function returns a statistic value.
}
\description{
Random projection independence test
}
\examples{
set.seed(1)
num <- 30

## univariate case:
x <- rnorm(num)
y <- rnorm(num)
pht.test(x, y)
y <- x + rnorm(num)
pht.test(x, y)

## multivariate case:
p <- 3
x <- matrix(rnorm(num * p), nrow = num)
y <- matrix(rnorm(num * p), nrow = num)
pht.test(x, y)
y <- x + matrix(rnorm(num * p), nrow = num)
pht.test(x, y)
}
