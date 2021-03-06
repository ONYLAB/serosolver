% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{generate_cumulative_inf_plots}
\alias{generate_cumulative_inf_plots}
\title{Plot cumulative and per time posterior infection probability densities}
\usage{
generate_cumulative_inf_plots(
  inf_chain,
  burnin = 0,
  indivs,
  real_inf_hist = NULL,
  start_inf = NULL,
  strain_isolation_times,
  nsamp = 100,
  ages = NULL,
  number_col = 1,
  pad_chain = TRUE,
  subset_years = NULL,
  return_data = FALSE
)
}
\arguments{
\item{inf_chain}{the infection history chain}

\item{burnin}{only plot samples where sampno > burnin}

\item{indivs}{vector of individual ids to plot}

\item{real_inf_hist}{if not NULL, adds lines to the plots showing the known true infection times}

\item{start_inf}{if not NULL, adds lines to show where the MCMC chain started}

\item{strain_isolation_times}{vector of times at which individuals could have been infected}

\item{nsamp}{how many samples from the MCMC chain to take?}

\item{ages}{if not NULL, adds lines to show when an individual was born}

\item{number_col}{how many columns to use for the cumulative infection history plot}

\item{pad_chain}{if TRUE, pads the infection history MCMC chain to have entries for non-infection events}

\item{subset_years}{if not NULL, pass a vector of indices to only take a subset of indices from strain_isolation_times}

\item{return_data}{if TRUE, returns the infection history posterior densities used to generate the plots}
}
\value{
two ggplot objects
}
\description{
For each individual requested, plots the median and 95% quantiles on a) the cumulative number of infections over a lifetime and b) the posterior probability that an infection occured in a given time point
}
\examples{
\dontrun{
data(example_inf_chain)
data(example_antigenic_map)
data(example_inf_hist)
data(example_titre_dat)

ages <- unique(example_titre_dat[,c("individual","DOB")])
times <- example_antigenic_map$inf_times
indivs <- 1:10
generate_cumulative_inf_plots(example_inf_chain, 0, indivs, example_inf_hist, NULL, times,
                              ages=ages, number_col=2,pad_chain=FALSE, return_data=TRUE)
}
}
\seealso{
Other infection_history_plots: 
\code{\link{calculate_infection_history_statistics}()},
\code{\link{plot_data}()},
\code{\link{plot_infection_histories}()},
\code{\link{plot_infection_history_chains_indiv}()},
\code{\link{plot_infection_history_chains_time}()},
\code{\link{plot_number_infections}()},
\code{\link{plot_posteriors_infhist}()},
\code{\link{plot_total_number_infections}()}
}
\concept{infection_history_plots}
