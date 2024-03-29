% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bibtex2rmd.R
\name{bibtex2rmd}
\alias{bibtex2rmd}
\title{Read bibtex to an Rmd file.}
\usage{
bibtex2rmd(
  bibfile,
  outfold,
  outfile,
  abstract = FALSE,
  overwrite = FALSE,
  section_title
)
}
\arguments{
\item{bibfile}{.bib file path}

\item{outfold}{output folder for .Rmd}

\item{outfile}{character string naming a file, should end in \dQuote{.Rmd}.}

\item{abstract}{print abstract or not}

\item{overwrite}{overwite the .Rmd file or not}

\item{section_title}{title for each section}
}
\description{
Read bibtex to an Rmd file.
}
