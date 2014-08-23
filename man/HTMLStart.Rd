\name{HTMLStart}
\alias{HTMLStart}
\alias{HTMLStop}

\title{Start / Stop  the automatic redirection of output to HTML files}
\description{
  Add the automatic redirection of output to an HTML file. The R session is modified in the following way: a new prompt is proposed (by default HTML>) and each parsed command is also evaluated using \code{\link{HTML}} generic method, so that the user benefits of both a normal and a HTML output.  Please read carefully the details below.
 }

\usage{
HTMLStart(outdir = tempdir(), filename = "index", extension = "html", echo = FALSE, autobrowse = FALSE, HTMLframe = TRUE, withprompt = "HTML> ", CSSFile = "R2HTML.css", BackGroundColor = "FFFFFF", BackGroundImg = "", Title = "R output") 
HTMLStop()
}


\arguments{
  \item{outdir}{physical directory to store the output }
  \item{filename}{name of the target HTML main file }
  \item{extension}{extension of the target HTML file (htm, html,...) }
  \item{echo}{should the parsed commands be written in the output? [boolean] }
  \item{autobrowse}{should the browser be invoked each time a command is issued? [boolean] }
  \item{HTMLframe}{should the output have a HTML frame structure? [boolean]}
  \item{withprompt}{prompt to display while using HTMLStart/HTMLStop}
  \item{CSSFile}{path and name of a CSS file to use }
  \item{BackGroundColor}{option bgcolor for HTML tag <body>}
  \item{BackGroundImg}{option background for HTML tag <body>}
  \item{Title}{string to pass to HTML <title> tag}
}

\details{
The user may need to know the following points which describe how R2HTML does work:

- Each parsed command is evaluated and the returned value is passed to the generic function HTML. This evaluation is assured by addTaskCallback function, which is used to add a specific task each time R has to parse an expression. 

- A new environment called HTMLenv is build, where internal variables such as physical path are stored. This environment is not visible by the user. It is destroyed when calling \code{HTMLStop}.

- Inside the HTMLenv environment, a special variable may be of interest: \code{.HTML.file}, which contains the path to the default HTML target file. User should modify this variable, at his own risks.

- For internal uses, functions \code{fix} and \code{plot.new} are temporary replaced, by assigning them in your primary environment. Those copies are deleted when calling \code{HTMLStop}. If you close your session before calling \code{HTMLStop}, you will have to erase those function manually. If not, you may encounter troubles when editing a function or making a graph, as R2HTML functions refer to the environment HTMLenv...


}
\value{
	no useful output is returned.
}
\author{ Eric Lecoutre }

\note{ The argument \code{echo} is very usefull for teaching purposes.}

\seealso{  \code{\link{HTML}}}

\examples{

# Perform's one's own direct report

dir.create(file.path(tempdir(),"R2HTML"))
HTMLStart(file.path(tempdir(),"R2HTML"),HTMLframe=FALSE, Title="My report",autobrowse=FALSE)
as.title("This is my first title")
x <- 1
y<- 2
x+y
HTMLStop()


## Use for interactive teaching course
if (interactive()){
	dir.create(file.path(tempdir(),"R2HTML"))
	HTMLStart(file.path(tempdir(),"R2HTML"),echo=TRUE)
	as.title("Manipulation vectors")
	1:10
	sum(1:10)
	c(1:10,rep(3,4))
	HTMLStop()
}
}

\keyword{ print }
\keyword{ IO }
\keyword{ file }

