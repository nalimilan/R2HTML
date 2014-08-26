\name{HTMLCSS}
\alias{HTMLCSS}

\title{ Insert HTML code to refer to an external CSS file }
\description{
  Allow to use CSS file in a report
}
\usage{
HTMLCSS(file = HTMLGetFile(), append = TRUE, CSSfile = "R2HTML.css")
}

\arguments{
  \item{file}{ the target HTML file }
  \item{append}{ logical. If 'TRUE' output will be appended to 'file'; otherwise, it will overwrite the contents of 'file'}
  \item{CSSfile}{ name of the CSS file to refer }
}

\value{
	no value returned.    
}
\references{ For information about CSS, have a look at W3 web site http://www.w3.org/Style/CSS/ }
\author{ Eric Lecoutre }

 

\examples{
myfile <- file.path(tempdir(),"tmp.html")
HTMLCSS(myfile,CSSfile="myownCSS.CSS")
}
\keyword{ print }
\keyword{ IO }
\keyword{ file }
