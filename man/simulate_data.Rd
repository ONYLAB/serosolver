% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulate_data.R
\name{simulate_data}
\alias{simulate_data}
\title{Simulate full data set}
\usage{
simulate_data(
  par_tab,
  group = 1,
  n_indiv = 100,
  buckets = 1,
  antigenic_map = NULL,
  strain_isolation_times = NULL,
  measured_strains = NULL,
  sampling_times,
  nsamps = 2,
  titre_sensoring = 0,
  age_min = 5,
  age_max = 80,
  attack_rates,
  repeats = 1,
  mu_indices = NULL,
  measurement_indices = NULL,
  add_noise = TRUE
)
}
\arguments{
\item{par_tab}{the full parameter table controlling parameter ranges and values}

\item{group}{which group index to give this simulated data}

\item{n_indiv}{number of individuals to simulate}

\item{buckets}{time resolution of the simulated data. buckets=1 indicates annual time resolution; buckets=4 indicates quarterly; buckets=12 monthly}

\item{antigenic_map}{(optional) A data frame of antigenic x and y coordinates. Must have column names: x_coord; y_coord; inf_times. See \code{\link{example_antigenic_map}}}

\item{strain_isolation_times}{(optional) If no antigenic map is specified, this argument gives the vector of times at which individuals can be infected}

\item{measured_strains}{vector of strains that have titres measured matching entries in strain_isolation_times}

\item{sampling_times}{possible sampling times for the individuals, matching entries in strain_isolation_times}

\item{nsamps}{the number of samples each individual has (eg. nsamps=2 gives each individual 2 random sampling times from sampling_times)}

\item{titre_sensoring}{numeric between 0 and 1, used to censor a proportion of titre observations at random (MAR)}

\item{age_min}{simulated age minimum}

\item{age_max}{simulated age maximum}

\item{attack_rates}{a vector of attack_rates for each entry in strain_isolation_times to be used in the simulation (between 0 and 1)}

\item{repeats}{number of repeat observations for each year}

\item{mu_indices}{default NULL, optional vector giving the index of `mus` that each strain uses the boosting parameter from. eg. if there are 6 circulation years in strain_isolation_times and 3 strain clusters, then this might be c(1,1,2,2,3,3)}

\item{measurement_indices}{default NULL, optional vector giving the index of `measurement_bias` that each strain uses the measurement shift from from. eg. if there's 6 circulation years and 3 strain clusters, then this might be c(1,1,2,2,3,3)}

\item{add_noise}{if TRUE, adds observation noise to the simulated titres}
}
\value{
a list with: 1) the data frame of titre data as returned by \code{\link{simulate_group}}; 2) a matrix of infection histories as returned by \code{\link{simulate_infection_histories}}; 3) a vector of ages
}
\description{
Simulates a full data set for a given set of parameters etc.
}
\examples{
data(example_par_tab)
data(example_antigenic_map)

## Times at which individuals can be infected
strain_isolation_times <- example_antigenic_map$inf_times
## Simulate some random attack rates between 0 and 0.2
attack_rates <- runif(length(strain_isolation_times), 0, 0.2)
## Vector giving the circulation times of measured strains
sampled_viruses <- seq(min(strain_isolation_times), max(strain_isolation_times), by=2)
all_simulated_data <- simulate_data(par_tab=example_par_tab, group=1, n_indiv=50,    
                                   strain_isolation_times=strain_isolation_times,
                                   measured_strains=sampled_viruses,
                                   sampling_times=2010:2015, nsamps=2, antigenic_map=example_antigenic_map, 
                                   age_min=10,age_max=75,
                                   attack_rates=attack_rates, repeats=2)
titre_dat <- all_simulated_data$data
titre_dat <- merge(titre_dat, all_simulated_data$ages)
}
\seealso{
Other simulation_functions: 
\code{\link{simulate_attack_rates}()},
\code{\link{simulate_group}()},
\code{\link{simulate_individual_faster}()},
\code{\link{simulate_individual}()},
\code{\link{simulate_infection_histories}()}
}
\concept{simulation_functions}
