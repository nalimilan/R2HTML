\name{HTMLbr}
\alias{HTMLbr}
\alias{HTMLhr}
\alias{HTMLli}

\title{ Facility functions to write HTML code }
\description{
  Write <br>, <li> and <hr> tags, which are often used, to an output file.
}
\usage{
HTMLbr(x=1, file = HTMLGetFile(), append=TRUE)
HTMLli(txt="", file = HTMLGetFile(), append=TRUE)
HTMLhr(file = HTMLGetFile(), Width = "100\%", Size = "1",
CSSclass=NULL, append=TRUE)
}

\arguments{
  \item{x}{ number of <br> to put }
  \item{txt}{ text to appear after the <li> tag }
  \item{file}{ HTML target output file}
  \item{Width}{ value of the width HR optional argument, in pixel or percent}  
  \item{Size}{ value of the size HR optional argument}  
  \item{append}{ logical. If 'TRUE' output will be appended to 'file'; otherwise, it will overwrite the contents of 'file'}
  \item{CSSclass}{ CSS class to use for personalised reports }
}

\value{
	no value returned.
}

\author{ Eric Lecoutre}

\note{ For a discussion about .HTML.file default value for file argument, refer to \code{\link{HTMLStart}} }

 

\seealso{  \code{\link{HTML}}}

\examples{

## Insert a line to a HTML file
## Change the path/name of the file to redirect to your test file

myfile <- paste(tempfile(),".html",sep="")
HTMLhr(file=myfile)
cat("\n Test output written in: ",myfile)

}
\keyword{ print }
\keyword{ IO }
\keyword{ file }
