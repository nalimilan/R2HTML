\name{RweaveHTML}
\alias{RweaveHTML}
\alias{RweaveHTMLOptions}
\alias{RweaveHTMLFinish}
\alias{RweaveHTMLWritedoc}
\alias{RweaveHTMLSetup}
\alias{RweaveHTMLRuncode}
\alias{SweaveSyntaxHTML}

\title{ A driver to parse HTML noweb files with Sweave tool}
\description{
   This driver parses HTML files containing R code and replace pieces of code with their output. Graphs are incorporated as png.
}
\usage{
RweaveHTML()
}
\value{
	None value is returned. From a .snw noweb file, the corresponding .html is produced (as eventuals png files for graphs).
}

\author{ Eric Lecoutre }
\note{
In order to work properly, noweb codes have to be located at the beginning of a line (no indentation). See samples in the samples directory of the package.
}


\seealso{ \code{\link[utils]{Sweave}}}
\examples{

\dontrun{
library(tools)
Sweave("file.snw",driver=RweaveHTML)
}
}
\keyword{ IO}
\keyword{ file}
