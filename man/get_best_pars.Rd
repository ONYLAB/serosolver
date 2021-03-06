% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{get_best_pars}
\alias{get_best_pars}
\title{Best pars}
\usage{
get_best_pars(chain)
}
\arguments{
\item{chain}{the MCMC chain}
}
\value{
a name vector of the best parameters
}
\description{
Given an MCMC chain, returns the set of best fitting parameters (MLE)
}
\examples{
\dontrun{
mcmc_chains <- load_theta_chains()
best_pars <- get_best_pars(mcmc_chains$chain)
}
}
\seealso{
Other mcmc_diagnostics: 
\code{\link{get_index_pars}()}
}
\concept{mcmc_diagnostics}
