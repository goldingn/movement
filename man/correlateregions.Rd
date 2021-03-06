% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/movement.R
\name{correlateregions}
\alias{correlateregions}
\title{Correlate the regions in a location dataframe with a list of regions which
map to an observed movement dataset.}
\usage{
correlateregions(location, regionlist, movementdata)
}
\arguments{
\item{location}{A \code{data.frame} containing "name", "location", "pop",
"lon" and "lat".}

\item{regionlist}{A \code{data.frame} containing "name" and "id"}

\item{movementdata}{A \code{data.frame} containing "origin", "destination",
"movement"}
}
\value{
A \code{list} containing a \code{locations} \code{data.frame} with
"name", "lat", "lon" and "pop" fields, and a \code{observed} \code{matrix}
containing a movement matrix.
}
\description{
A utility function that creates a list containing a location dataframe and
a movement matrix. The \code{regionlist} and \code{movementdata} should be
from the same source, i.e. the IDs in the \code{movementdata} correspond to
the IDs in the regionlist. The data \code{location} is likely to be an
external datasource, and the locations may not precisely match those in the
\code{regionlist}. This function removes items from \code{location} which
don't exist in \code{regionlist} and vice-versa. It then converts
\code{movementdata} to a movement matrix with named rows and columns (based
on \code{regionlist}).
}

