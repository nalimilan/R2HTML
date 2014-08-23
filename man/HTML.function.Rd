\name{HTML.function}
\alias{HTML.function}

\title{Writes the code of a function to a target HTML file }
\description{
  Writes the code of a function to a target HTML file 
}
\usage{\method{HTML}{function}(x, file = get(".HTML.file"), append=TRUE,...)
}

\arguments{
  \item{x}{ Name of a function }
  \item{file}{ target HTLM output}
  \item{append}{ logical. If 'TRUE' output will be appended to 'file'; otherwise, it will overwrite the contents of 'file'}
  \item{\dots}{ ...}
}
\details{
  The code of the function is written in the target HTML file, using HTML <XMP> tag. A CSS class called "function" is used to personalise the output.
}
\value{
	no value returned.  
}
\author{ Eric Lecoutre }

\note{ For a discussion about .HTML.file default value for file argument, refer to \code{\link{HTMLStart}} }

\seealso{  \code{\link{HTML}}}

\examples{

## Define a function and export it's code to the file /test.html.
## Target file may be changed when submitting this code...

myfile <- paste(tempfile(),".html",sep="")
myfun <- function(x){
	cat("\n Euclidian norm")
	return(sqrt(sum(x^2)))
 }
HTML(myfun,file=myfile)
cat("\n Test output written in: ",myfile)

}

\keyword{ print }
\keyword{ IO }
\keyword{ file }
