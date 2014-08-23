\name{HTML.latex}
\alias{HTML.latex}
\alias{as.latex}

\title{Insert a piece of LaTeX into a HTML file}
\description{
  This makes use of \code{AsciiMathML} javascript functions. Standard LaTeX input will be turned into MathML and displayed through any brower extension that can handle MathML (such as MathPlayer)
}
\usage{
as.latex(x,label=NULL,inline=ifelse(is.null(label),TRUE,FALSE),count=ifelse(is.null(label),FALSE,TRUE))
\method{HTML}{latex}(x, file = get(".HTML.file"), ...)
}

\arguments{
  \item{x}{ String containing mathematics in a LaTeX notation }
  \item{file}{ HTML target output file}
  \item{label}{ String - Label to be displayed before the equation}
  \item{inline}{ Boolean - Place of the equation within the output flux - see details}
  \item{count}{ Boolean - Should the equation be numbered or not? }
  \item{\dots}{ ... }

}
\details{
	Mathematical notations will be translated in MathML by the \code{AsciiMathML} javascript program of Peter Jipsen. Note that his functions allow translating equations with a notation simpler than LaTeX (see his page on \code{AsciiMathML} for details). Pieces of LaTeX could be put \emph{inline} (within text) or on a single line : same opposition that the one between $...$ and $$...$$. In order to work, a reference to the javascipt file has to be present within the HTML file \bold{and} the HTML body tag has also to include \code{onload="translate()"}. All the necessary stuff is included in \code{\link{HTMLInitFile}}.
}
\value{
	no value returned.
}
\references{ AsciiMathML: \url{http://www1.chapman.edu/~jipsen/mathml/asciimath.xml} }
\author{ Eric Lecoutre }



\seealso{ \code{\link{HTMLInitFile}},\code{\link{HTML}} }
\examples{
\dontrun{
	 fic = HTMLInitFile()
	 HTML.title("sample page",1,file=fic)  
	 HTML("First paragraph",file=fic)
	 cat("Some text and then an equation:",file=fic,append=TRUE)
	 HTML(as.latex("\int_{-\infty}^{1}f(x)dx") ,file=fic)
	 cat(". Nice isn't it?",file=fic,append=TRUE)
	 HTML(as.latex("\int_{-\infty}^{1}f(x)dx",inline=FALSE) ,file=fic)   
	 HTML(as.latex("\int_{-\infty}^{1}f(x)dx",inline=FALSE,count=TRUE) ,file=fic)   
	 HTML(as.latex("\int_{-\infty}^{1}f(x)dx",inline=FALSE,label="My equation") ,file=fic)      
	 cat("file:", fic, "is created")
	 browseURL(fic)}		   
}
\keyword{ print }
\keyword{ IO }
\keyword{ file }
