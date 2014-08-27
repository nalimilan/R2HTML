\name{HTMLplot}
\alias{HTMLplot}

\title{ Insert a graphic into an HTML output }
\description{
  Exports the active graphic to a JPEG or GIF file and add it to a target HTML output, by writing the <IMG> tag.
}
\usage{
HTMLplot(Caption = "", file = HTMLGetFile(), append = TRUE,
GraphDirectory = ".", GraphFileName = "", GraphSaveAs = "png", GraphBorder = 1,
Align = "center", Width = 500, Height = 500, WidthHTML = NULL, HeightHTML = NULL,
GraphPointSize = 12, GraphBackGround = "white", GraphRes = 72, plotFunction = NULL, ...)
}

\arguments{
  \item{Caption}{text to be placed below the graphic, as a caption}
  \item{file}{ the target HTML file }
  \item{append}{ logical. If 'TRUE' output will be appended to 'file'; otherwise, it will overwrite the contents of 'file'}
  \item{GraphDirectory}{ path where file should be stored; ignore in a \code{HTMLStart}/\code{HTMLStop} session }
  \item{GraphFileName}{ name of the file to produce (could be missing) }
  \item{GraphSaveAs}{ an existing exportation device, such as jpg or gif }
  \item{GraphBorder}{ HTML border option for the <IMG> tag }
  \item{Align}{ HTML align option for the <IMG> tag}
  \item{Width}{width of the image to create (passed to the driver)}
  \item{Height}{height of the image to create (passed to the driver) (NULL: not specified)}
  \item{WidthHTML}{ Width of the image in HTML}
  \item{HeightHTML}{ Height of the image in HTML (NULL for not specified)}
  \item{GraphPointSize}{ To be passed to the device creator function}
  \item{GraphBackGround}{ To be passed to the device creator function}
  \item{GraphRes}{ To be passed to the device creator function}
  \item{plotFunction}{Function to be evaluated for the on-the-fly creation of the graph to be exported}	
  \item{\dots}{ ... }
}
\details{
Note that this function is coded to work automatically when using automatic exportation with \code{\link{HTMLStart}}. When using manualy, user should pay attention to the GraphDirectory option, so that graph files are in the same directory as HTML output files. When using to write reports in a non interactive way, first generate the graphic using a device and then use \code{\link{HTMLInsertGraph}}.
}
\value{
	no value returned.  
}

\author{ Eric Lecoutre }

\seealso{ \code{\link{HTMLStart}}, \code{\link{HTMLInsertGraph}}}

\examples{

## Plots a graphic and insert it into the file /test.html.
## Target file and also graph directory should be changed when submitting this code...

myfile <- paste(tempfile(),".html",sep="")
plot(sin, -pi, 2*pi,main="Sinus")
# HTMLplot(file=myfile,GraphDirectory="/",Caption="Look at this curve!")
}

\keyword{ print }
\keyword{ IO }
\keyword{ file }

