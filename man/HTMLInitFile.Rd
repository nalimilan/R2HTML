\name{HTMLInitFile}
\alias{HTMLInitFile}
\alias{HTMLEndFile}
\alias{HTMLSetFile}
\alias{HTMLGetFile}

\title{ Begins / Ends a new HTML report output }
\description{
  \code{HTMLInitFile} handles the beginning and \code{HTMLEndFile} the ending of a HTML report, by writing the HTML <body><head><title></title></head>...</body> tags and their options. When working manually, the user may need to use it's own functions or to explicitly write to a file using cat("", file=).

  \code{HTMLInitFile} and \code{HTMLSetFile} sets the default file path to be used by \code{HTML} functions, and \code{HTMLGetFile} retrieves it.
}

\usage{
HTMLInitFile(outdir = tempdir(), filename="index", extension="html",
HTMLframe=FALSE, BackGroundColor = "FFFFFF", BackGroundImg = "",
Title = "R output", CSSFile="R2HTML.css", useLaTeX=TRUE, useGrid=TRUE)
HTMLEndFile(file = HTMLGetFile())
HTMLSetFile(file)
HTMLGetFile()
}



\arguments{
  \item{outdir}{ directory to store the output }
  \item{filename}{ target HTML report filename }
  \item{extension}{ target HTML report extension (htm, html,...)  }
  \item{HTMLframe}{ should the output be handled by frames [boolean] }
  \item{BackGroundColor}{ option bgcolor for HTML tag <body>}
  \item{BackGroundImg}{ option background for HTML tag <body>}
  \item{Title}{ string to pass to HTML <title> tag  }
  \item{CSSFile}{ path and name of a CSS file to use }
  \item{useLaTeX}{ boolean - add required references to javascript AsciiMathML in order to use \code{as.latex}}
  \item{useGrid}{ boolean - add required references to javascript grid in order to use R2HTML grid fonctions}
  \item{file}{target HTML file to set as default or to end}
}

\value{
	physical path of the main HTML file that will serve for the report.
}
\author{ Eric Lecoutre }

\seealso{  \code{\link{HTML}}, \code{\link{as.latex}}, \code{\link{HTMLgrid}}}

\examples{
	# Store in target the name of a output file
	dir.create(file.path(tempdir(),"R2HTML"))
	target <- HTMLInitFile(file.path(tempdir(),"R2HTML"),"index", BackGroundColor="#BBBBEE")
	# Use target to write a dataframe
	HTML(as.title("Here is the data frame"),file=target)
	HTML("<br>Don't forget to use the CSS file in order to benefit from fixed size police",
	     file=target)
	tmp <- as.data.frame(matrix(rnorm(100),ncol=10))
	HTML(tmp,file=target)
	HTMLEndFile()
}
\keyword{ print }
\keyword{ IO }
\keyword{ file }

