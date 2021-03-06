% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mcmc_help.R
\name{expand_summary_infChain}
\alias{expand_summary_infChain}
\title{Expand sparse infection history matrix}
\usage{
expand_summary_infChain(inf_chain, j_vec = NULL)
}
\arguments{
\item{inf_chain}{the data table with the saved sparse infection history matrix}

\item{j}{optional vector of js to expand the infection history chain for}
}
\value{
long format, full infection history matrix chain
}
\description{
Expand sparse infection history matrix
}
