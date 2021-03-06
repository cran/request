% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api.R
\name{api}
\alias{api}
\alias{api_path}
\alias{api_path_}
\alias{api_template}
\title{API base url and endpoint setup}
\usage{
api(x)

api_path(.data, ..., .dots)

api_path_(.data, ..., .dots)

api_template(.data, template, data)
}
\arguments{
\item{x}{A URL}

\item{.data}{Result of a call to \code{api}}

\item{...}{Comma separated list of unquoted variable names}

\item{.dots}{Used to work around non-standard evaluation}

\item{template}{Template to contstruct API route}

\item{data}{Data to pass to the template parameter}
}
\description{
API base url and endpoint setup
}
\examples{
\dontrun{
# Set base url
## works with full or partial URLs
api('https://api.github.com/')
api('http://api.gbif.org/v1')
api('api.gbif.org/v1')

## works with ports, full or partial
api('http://localhost:9200')
api('localhost:9200')
api(':9200')
api('9200')
api('9200/stuff')

# set paths
## NSE
api('https://api.github.com/') \%>\%
  api_path(repos, ropensci, rgbif, issues)
## SE
api('https://api.github.com/') \%>\%
  api_path_('repos', 'ropensci', 'rgbif', 'issues')

# template
repo_info <- list(username = 'craigcitro', repo = 'r-travis')
api('https://api.github.com/') \%>\%
  api_template(template = 'repos/{{username}}/{{repo}}/issues', data = repo_info)
}
}
\seealso{
Other dsl: \code{\link{api_body}},
  \code{\link{api_config}},
  \code{\link{api_error_handler}}, \code{\link{api_query}},
  \code{\link{auth}}
}

