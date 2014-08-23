\name{HTMLInsertGraph}
\alias{HTMLInsertGraph}

\title{ Insert a graph in a HTML report}
\description{
  Write the HTML <img> tag to an output, so that a existant graph could be displayed in the HTML report
}
\usage{
HTMLInsertGraph(GraphFileName="", Caption="", GraphBorder=1, Align="center", WidthHTML=500, HeightHTML=NULL, file=get(".HTML.file"), append=TRUE,...)
}

\arguments{
  \item{GraphFileName}{ Name of the target graph (GIF, JPEG or PNG) }
  \item{Caption}{ If non empty, text to be written under the graph, as its caption}
  \item{GraphBorder}{ Size of the border, in pixels }
  \item{Align}{ Alignment of the graph (center, left or right) }
  \item{WidthHTML}{ Width of the image in HTML}
  \item{HeightHTML}{ Height of the image in HTML (NULL for not specified)}
  \item{file}{ Name of the target HTML file (the report) }
  \item{append}{ logical. If 'TRUE' output will be appended to 'file'; otherwise, it will overwrite the contents of 'file'}
  \item{\dots}{ \dots }
}
\details{
  The steps to add a graph to a HTML file are the following: first create the graph, by using a device convenient for web pages, such as GIF, JPEG or PNG. Ensure to write it in the same directory than the HTML file. Then call HTMLInsertGraph.
  }
\value{
	no value returned.  
}

\author{ Eric Lecoutre }

\seealso{ \code{\link{HTMLplot}}  }
\examples{

	directory=getwd()
	HTMLoutput=file.path(directory,"output.html")
	graph1="graph1.png"
	# Write graph to a file
	\dontrun{png(file.path(directory,graph1))}
	\dontrun{plot(table(rpois(100,5)), type = "h", col = "red", lwd=10,main="rpois(100,lambda=5)")}
	\dontrun{dev.off()}
	# Insert graph to the HTML output
	HTMLInsertGraph(graph1,file=HTMLoutput,caption="Sample discrete distribution plot")
}

\keyword{ print }
\keyword{ IO }
\keyword{ file }


