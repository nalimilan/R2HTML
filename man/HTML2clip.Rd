\name{HTM2clip}
\alias{HTML2clip}

\title{Wrapper around HTML() to save output to the clipboard}
\description{
     Calls HTML() with appropriate filename and append attributes to write output to clipboard (currently 
     only works on Windows). 
}
\usage{
	HTML2clip(x, filename = file("clipboard", ifelse(.Platform$OS == "windows","w",stop("Writing to clipboard only supported on Windows"))), append = FALSE, ...) 
}

\arguments{
  \item{x}{ object to be output to HTML }
  \item{filename}{ destination output file, defaults to clipboard }
  \item{append}{ logical. If 'TRUE' output will be appended to 'file'; 
		 otherwise, it will overwrite the contents of 'file'decides if the filevalue of the width HR optional argument, in pixel or percent}  
  \item{\dots}{ ... (passed on to HTML())}
}

\value{
	no value returned.
}

\author{ Eric Lecoutre}

\note{ This function was contributed by Gabor Grothendieck.}

 

\seealso{  \code{\link{HTML}}}

\examples{
if (.Platform$OS == "windows")
	HTML2clip(summary(lm(rating ~., attitude)))
}
\keyword{ print }
\keyword{ IO }
\keyword{ file }
