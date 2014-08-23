\name{HTLMReplaceNA}
\alias{HTMLReplaceNA}
\alias{HTMLCommand}
\alias{HTMLcode}
\title{Internal R2HTML functions}
\description{   Internal R2HTML functions}
\usage{
HTMLReplaceNA(Vec, Replace = " ")
HTMLCommand(x, file = get(".HTML.file"), Num = "", menu = FALSE, target= "index<-main.html", append = TRUE, ...)
HTMLcode(x,...)
}
\arguments{
  \item{Vec}{ string }
  \item{Replace}{ string to use for missing values }
  \item{x}{ a string corresponding to a R command}
  \item{file}{ the target HTML file }
  \item{Num}{ number of the command}
  \item{menu}{to build a menu of commands}
  \item{target}{As command is put in a left frame, name of the linked target HTML page}
  \item{append}{ logical. If 'TRUE' output will be appended to 'file'; otherwise, it will overwrite the contents of 'file'}
  \item{\dots}{...}
}
\details{
     These are not to be called by the user.
}
\keyword{misc}
