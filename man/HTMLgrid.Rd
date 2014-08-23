\name{HTMLgrid}
\alias{HTMLgrid}
\alias{HTMLgrid_inline}
\alias{HTMLgrid_references}
\alias{HTMLgrid_summary}

\title{ Creates a HTML grid using ActiveWidget grid - www.activewidgets.com}
\description{  All HTMLgrid functions do use the component ActiveWidget grid. Basically, we use this component to display data, so the functions export a data.frame.
  Data could be stored within the HTML file (\code{HTMLgrid_inline}) or in an external raw text file which would be required asynchronously (\code{HTMLgrid}).
}


\usage{
HTMLgrid(x, file = get(".HTML.file"), append = TRUE, includeref = FALSE, align = "center", digits = getOption("R2HTML.format.digits"), nsmall = getOption("R2HTML.format.nsmall"),  big.mark = getOption("R2HTML.format.big.mark"),  big.interval = getOption("R2HTML.format.big.interval"),  decimal.mark = getOption("R2HTML.format.decimal.mark"),  asDF = TRUE, browse = FALSE, classes = NULL, showimages = TRUE)
HTMLgrid_inline(x,file = get(".HTML.file"),append=TRUE ,includeref=FALSE, align="center",digits=getOption("R2HTML.format.digits"),   nsmall = getOption("R2HTML.format.nsmall"),   big.mark = getOption("R2HTML.format.big.mark"),   big.interval = getOption("R2HTML.format.big.interval"),   decimal.mark = getOption("R2HTML.format.decimal.mark"),   asDF=TRUE,browse=FALSE, classes=sapply(x,class),   showimages=TRUE)
HTMLgrid_summary(x,file=NULL,append=TRUE,  digits=getOption("R2HTML.format.digits"), nsmall = getOption("R2HTML.format.nsmall"), big.mark = getOption("R2HTML.format.big.mark"), big.interval = getOption("R2HTML.format.big.interval"),  decimal.mark = getOption("R2HTML.format.decimal.mark"), browse=FALSE)
HTMLgrid_references(file=)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ a data.frame }
  \item{file}{ target HTLM output - see details below }
  \item{append}{ logical. If 'TRUE' output will be appended to 'file'; otherwise, it will overwrite the contents of 'file' }
  \item{includeref}{ logical. If 'TRUE', references to necessary CSS+Javascript files will be includes. See details. }
  \item{align}{ "center", "left" or "right" }
  \item{digits}{ number of digits to use for rounding}
  \item{nsmall}{number of digits which will always appear to the right of the decimal point in formatting real/complex numbers in non-scientific formats. Allowed values '0 <= nsmall <= 20'}
  \item{big.mark}{ character; if not empty used as mark between every 'big.interval' decimals before (hence 'big') the decimal point}
  \item{big.interval}{ see 'big.mark' above; defaults to 3}
  \item{decimal.mark}{the character used to indicate the numeric decimal point}
  \item{asDF}{ logical. If 'TRUE', output will be considered as a data frame (which also mean by default we show icons for data type) }
  \item{browse}{ logical. If 'TRUE', the output file will directly be called within a browser. }
  \item{classes}{ vector of classes for the object. If \code{NULL}, the default, will be created using real classes. Could be used to bypass defaukt formatting associated with each class}
  \item{showimages}{ logicial. Display or not little icons in columns headers }
}
\details{
  Those exportation methods require severall external files, including the runtime version of ActiveWidgets grid.
  To include the necessary references, you can use \code{HTMLgrid_references}.
  Be careful: if you intend to put multiple grids on a same output, the references has to be present only once in the output.
    \\
   If you set the \code{file} argument to \code{NULL}, a new temp file will be created.
 }

\value{
  \item{file}{target HTLM output }
}
\references{ ActiveWidgets Grid 1.0 - http://www.activewidgets.com }
\author{ Eric Lecoutre }
\note{ Presentation relies on pure CSS + Javascript. It may be possible than future upgrade change the presentation of grids created with this version.}



\examples{
    data(iris)
    fic <- HTMLInitFile(useGrid=TRUE,useLaTeX=FALSE)
    fic <- HTMLgrid_inline(iris,file=fic)
    cat("\n Browse file 'fic':",fic)
    \dontrun{browseURL(fic)}
}
\keyword{datasets}
\keyword{IO}
