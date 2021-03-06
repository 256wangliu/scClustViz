% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shinyModules.R
\name{plot_mdPerClust}
\alias{plot_mdPerClust}
\title{scClustViz plot: Plot to view cellular metadata by cluster}
\usage{
plot_mdPerClust(MD, sel, cl, opt = "absolute", cols = NULL)
}
\arguments{
\item{MD}{A dataframe of cellular metadata. See \code{\link{getMD}}.}

\item{sel}{A character vector of one refering to the variable name from
\code{MD} to plot.}

\item{cl}{A factor of cluster assignments. See \code{\link{Cluster}}.}

\item{opt}{Default="absolute". A character vector of plotting options. One of
\code{"absolute"}, \code{"relative"}, or \code{"y"}. \code{"y"} sets
log-scales the data for postive numerical metadata. For categorical
metadata, \code{"absolute"} plots a stacked barplot of raw counts, whereas
\code{"relative"} plots the proportion of each cluster represented by each
category.}

\item{cols}{Default = \code{NULL}. A vector of colours used to label the clusters.}
}
\description{
This function makes boxplots / stacked barplots of cellular metadata
separated by cluster.
}
\examples{
\dontrun{
plot_mdPerClust(MD=getMD(input_data_obj),
                sel="cyclonePhases",
                cl=Clusters(sCVdata),
                opt="relative")
}

}
