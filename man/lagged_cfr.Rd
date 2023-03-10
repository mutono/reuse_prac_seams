% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cfrcurve.R
\name{lagged_cfr}
\alias{lagged_cfr}
\title{Compute requested lagged CFRs}
\usage{
lagged_cfr(dt, lags)
}
\arguments{
\item{dt}{a \code{\link[data.table:as.data.table]{data.table::as.data.table()}} coerceable object. Should result in
columns \code{date}, \code{cases}, \code{deaths} and possibly others. The other columns will
be used as grouping variables, except those matching the pattern
\code{date|cases|deaths}.}

\item{lags}{a positive integer vector; the lags to compute}
}
\value{
a \code{\link[data.table:data.table]{data.table::data.table()}}, with columns \code{date}, \code{lag}, \code{cfr}, and
any other columns coerced (other than \code{cases} and \code{deaths}) from the original
\code{dt}.
}
\description{
Compute requested lagged CFRs
}
\examples{
require(seamsCFR)
require(data.table)
dt <- data.table(date = 1:100, cases = runif(100))
dt[, deaths := cases * (runif(.N)*.1 + .1)]
df <- lagged_cfr(dt, c(0, 10))
}
