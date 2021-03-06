% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{plot_data}
\alias{plot_data}
\title{Useful plot for looking at simulated data}
\usage{
plot_data(
  titre_dat,
  infection_histories,
  strain_isolation_times,
  n_indivs,
  start_inf = NULL,
  study_design = "multi-strain"
)
}
\arguments{
\item{titre_dat}{the data frame of titre data}

\item{infection_histories}{the infection history matrix}

\item{strain_isolation_times}{the vector of times at which individuals could be infected}

\item{n_indivs}{how many individuals to plot}

\item{start_inf}{if not NULL, plots the infection history matrix used as the starting point in the MCMC chain}

\item{study_design}{default "multi-strain" facets by sample time. "single-strain" gives sample time on the x-axis and colours by virus}
}
\value{
a ggplot object
}
\description{
Plots measured titres and known infection histories for all individuals, facetted by sample time (multi-strain panel) or virus variable (longitidunal single strain)
}
\examples{
\dontrun{
data(example_titre_dat)
data(example_inf_hist)
data(example_antigenic_map)
strain_isolation_times <- example_antigenic_map$inf_times
plot_data(example_titre_dat, example_inf_hist, strain_isolation_times, 5)
}
}
\seealso{
Other infection_history_plots: 
\code{\link{calculate_infection_history_statistics}()},
\code{\link{generate_cumulative_inf_plots}()},
\code{\link{plot_infection_histories}()},
\code{\link{plot_infection_history_chains_indiv}()},
\code{\link{plot_infection_history_chains_time}()},
\code{\link{plot_number_infections}()},
\code{\link{plot_posteriors_infhist}()},
\code{\link{plot_total_number_infections}()}
}
\concept{infection_history_plots}
