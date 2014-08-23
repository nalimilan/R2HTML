\name{HTMLChangeCSS}
\alias{HTMLChangeCSS}

\title{ Change the current CSS file for dynamic use of package }
\description{
  When using in dynamic mode, a call to \code{HTMLStart} copy the R2HTML.css file to the specified output directory (temp by default). \code{HTMLChangeCSS} copy a new CSS file to this destination (or to working directory). Then, the produced HTML files are now based on this new CSS.
  }
\usage{
HTMLChangeCSS(newCSS = "R2HTML", from = NULL)
}

\arguments{
  \item{newCSS}{ Name of the CSS to use (without the extension) }
  \item{from}{ Source directory where to search the CSS file }
}
\value{
	A boolean: wether this has been done or not.
}

\author{ Eric Lecoutre }

\note{ In order to work properly, this assumes you hae used R2HTML.css file (the default one), as this is this file which will be replaced by the new one.}



\seealso{ \code{\link{HTMLStart}}}

\examples{
\dontrun{
	HTMLStart()
	(x=diag(3))
	HTMLChangeCSS("Pastel")
	# refresh the browser
}
}
\keyword{ IO}
\keyword{ file }
