\name{HTML.title}
\alias{HTML.title}
\alias{as.title}

\title{ Writes a title in a target HTML output }
\description{
  A title is a string with the S3 class "title". The function \code{as.title} gives this class to an object, so that title method of HTML could apply to it. However, it is also possibly to call this method, explicitly, providing a plain string.
}
\usage{
\method{HTML}{title}(x, HR = 2, CSSclass=NULL,
file = HTMLGetFile(), append=TRUE,...)
as.title(x)
}

\arguments{
  \item{x}{ string }
  \item{HR}{ rank attribute of the HTML <H?> tag }
  \item{CSSclass}{ CSS class to use for personalised reports }
  \item{file}{ the target HTML file }
  \item{append}{ logical. If 'TRUE' output will be appended to 'file'; otherwise, it will overwrite the contents of 'file'}
  \item{\dots}{ ... }
}
\value{
	no value returned.  
}
\author{ Eric Lecoutre }

\note{ For a discussion about .HTML.file default value for file argument, refer to \code{\link{HTMLStart}} }

\seealso{  \code{\link{HTML}} }

\examples{
## Write a title in the file /test.html.
## Target file may be changed when submitting this code...

myfile <- paste(tempfile(),".html",sep="")

tit1 <- as.title("This is method 1")

HTML(tit1, file=myfile)

HTML.title("This is method 2",file=myfile, HR=3)
cat("\n Test output written in: ",myfile)


}
\keyword{ print }
\keyword{ IO }
\keyword{ file }
