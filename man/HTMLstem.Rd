\name{HTMLstem}
\alias{HTMLstem}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Insert a stem-and-leaf plot in the HTML output}
\description{
  Insert a stem-and-leaf plot in the HTML output.
}
\usage{
HTMLstem(x, file = get(".HTML.file"), append = TRUE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{  a numeric vector.}
  \item{file}{ the target HTML file  }
  \item{append}{logical. If 'TRUE' output will be appended to 'file'; otherwise, it will overwrite the contents of 'file'}
  \item{\dots}{ any other argument that may be passed to \code{stem}, such as scale,...}
}
\details{
 As \code{stem} internal function does not return anything but directly print to console, there is no way to automatically export it to the HTML output. Thus, \code{HTMLstem} simply captures the output and write it to the HTML file. When using the package in a interactive way, you should call \code{HTMLstem}.
}
\value{
	no value returned.  }

\author{ Eric Lecoutre}


\seealso{ \code{\link{stem}},\code{\link{HTML}}}
\examples{
	data(islands)
	tmpfic=paste(tempfile(),"html",sep=".")
	HTMLstem(log10(islands),tmpfic)
	cat("\n stem-and-leaf writen to:", tmpfic,"\n")
}
\keyword{ IO }
\keyword{ univar }
