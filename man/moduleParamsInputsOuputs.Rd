% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/moduleMetadata.R
\name{moduleParams}
\alias{moduleParams}
\alias{moduleParams,character,character-method}
\alias{moduleInputs}
\alias{moduleInputs,character,character-method}
\alias{moduleOutputs}
\alias{moduleOutputs,character,character-method}
\title{Extract a module's parameters, inputs, or outputs}
\usage{
moduleParams(module, path)

\S4method{moduleParams}{character,character}(module, path)

moduleInputs(module, path)

\S4method{moduleInputs}{character,character}(module, path)

moduleOutputs(module, path)

\S4method{moduleOutputs}{character,character}(module, path)
}
\arguments{
\item{module}{Character string. Your module's name.}

\item{path}{Character string specifying the file path to modules directory.
Default is to use the \code{spades.modulePath} option.}
}
\value{
\code{data.frame}
}
\description{
These are simply wrappers around \code{moduleMetadata}.
}
\examples{
path <- system.file("sampleModules", package = "SpaDES.core")
sampleModules <- dir(path)

p <- moduleParams(sampleModules[3], path = path)
i <- moduleInputs(sampleModules[3], path = path)
o <- moduleOutputs(sampleModules[3], path = path)

#' \dontrun{
## easily include these tables in Rmd files using knitr
knitr::kable(p)
knitr::kable(i)
knitr::kable(o)
#' }
}
\seealso{
\code{\link{moduleMetadata}}
}
\author{
Alex Chubaty
}
