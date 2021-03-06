% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/caffOverdose.R
\name{caffOverdose}
\alias{caffOverdose}
\title{Calculate a duration of plasma caffeine concentration over specified toxic limits}
\usage{
caffOverdose(caffConcTimeData)
}
\arguments{
\item{caffConcTimeData}{data frame containing concentration-time data}
}
\value{
descriptive statistics of duration of toxic concentrations
}
\description{
\code{caffOverdose} calculates a time duration of plasma caffeine concentration over specified toxic limits (40 mg/L or 80 mg/L)
}
\examples{
caffOverdose(caffConcTime(Weight = 20, Dose = 200, N = 20))
caffOverdose(caffConcTimeMulti(Weight = 20, Dose = 200, N = 20, Tau = 8, Repeat = 4))
}
\seealso{
\url{https://asan.shinyapps.io/caff/}
}
