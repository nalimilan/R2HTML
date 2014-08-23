\name{HTML}
\alias{HTML}
\alias{HTML.anova}
\alias{HTML.aov}
\alias{HTML.aovlist}
\alias{HTML.array}
\alias{HTML.atomic}
\alias{HTML.by}
\alias{HTML.call}
\alias{HTML.character}
\alias{HTML.coefmat}
\alias{HTML.complex}
\alias{HTML.connection}
\alias{HTML.default}
\alias{HTML.density}
\alias{HTML.difftime}
\alias{HTML.dummy.coef}
\alias{HTML.dummy.coef.list}
\alias{HTML.environment}
\alias{HTML.factor}
\alias{HTML.family}
\alias{HTML.formula}
\alias{HTML.ftable}
\alias{HTML.glm}
\alias{HTML.glm.null}
\alias{HTML.hsearch}
\alias{HTML.htest}
\alias{HTML.infl}
\alias{HTML.integer}
\alias{HTML.integrate}
\alias{HTML.list}
\alias{HTML.listof}
\alias{HTML.lm}
\alias{HTML.lm.null}
\alias{HTML.logical}
\alias{HTML.logLik}
\alias{HTML.MethodsFunction}
\alias{HTML.mtable}
\alias{HTML.noquote}
\alias{HTML.numeric}
\alias{HTML.octmode}
\alias{HTML.ordered}
\alias{HTML.pairlist}
\alias{HTML.POSIXct}
\alias{HTML.POSIXlt}
\alias{HTML.rle}
\alias{HTML.SavedPlots}
\alias{HTML.simple.list}
\alias{HTML.socket}
\alias{HTML.summary.aov}
\alias{HTML.summary.aovlist}
\alias{HTML.summary.glm}
\alias{HTML.summary.glm.null}
\alias{HTML.summary.lm}
\alias{HTML.summary.lm.null}
\alias{HTML.summary.manova}
\alias{HTML.summary.table}
\alias{HTML.table}
\alias{HTML.tables.aov}
\alias{HTML.terms}
\alias{HTML.ts}
\alias{HTML.TukeyHSD}
\alias{HTML.xtable}
\alias{HTML.xtabs}
\alias{HTML.abbrev}
\alias{HTML.agnes}
\alias{HTML.Anova}
\alias{HTML.anova.loglm}
\alias{HTML.ar}
\alias{HTML.Arima}
\alias{HTML.arima0}
\alias{HTML.boot}
\alias{HTML.bootci}
\alias{HTML.bSpline}
\alias{HTML.clara}
\alias{HTML.correspondence}
\alias{HTML.cox.zph}
\alias{HTML.coxph.null}
\alias{HTML.date}
\alias{HTML.diana}
\alias{HTML.dissimilarity}
\alias{HTML.dist}
\alias{HTML.ecdf}
\alias{HTML.ellipsoid}
\alias{HTML.factanal}
\alias{HTML.fanny}
\alias{HTML.fitdistr}
\alias{HTML.fractions}
\alias{HTML.gam}
\alias{HTML.gamma.shape}
\alias{HTML.glm.dose}
\alias{HTML.grob}
\alias{HTML.hclust}
\alias{HTML.HoltWinters}
\alias{HTML.lda}
\alias{HTML.libraryIQR}
\alias{HTML.loadings}
\alias{HTML.loess}
\alias{HTML.loglm}
\alias{HTML.lqs}
\alias{HTML.mca}
\alias{HTML.medpolish}
\alias{HTML.mona}
\alias{HTML.multinom}
\alias{HTML.nls}
\alias{HTML.nnet}
\alias{HTML.pairwise.htest}
\alias{HTML.pam}
\alias{HTML.polr}
\alias{HTML.polySpline}
\alias{HTML.power.htest}
\alias{HTML.ppolySpline}
\alias{HTML.ppr}
\alias{HTML.prcomp}
\alias{HTML.princomp}
\alias{HTML.qda}
\alias{HTML.ridgelm}
\alias{HTML.rlm}
\alias{HTML.rms.curv}
\alias{HTML.rpart}
\alias{HTML.saddle.distn}
\alias{HTML.shingle}
\alias{HTML.shingleLevel}
\alias{HTML.simplex}
\alias{HTML.smooth.spline}
\alias{HTML.stepfun}
\alias{HTML.stl}
\alias{HTML.StructTS}
\alias{HTML.structure}
\alias{HTML.summary.agnes}
\alias{HTML.summary.clara}
\alias{HTML.summary.diana}
\alias{HTML.summary.fanny}
\alias{HTML.summary.gam}
\alias{HTML.summary.loess}
\alias{HTML.summary.loglm}
\alias{HTML.summary.mona}
\alias{HTML.summary.multinom}
\alias{HTML.summary.negbin}
\alias{HTML.summary.nls}
\alias{HTML.summary.nnet}
\alias{HTML.summary.pam}
\alias{HTML.summary.polr}
\alias{HTML.summary.ppr}
\alias{HTML.summary.prcomp}
\alias{HTML.summary.princomp}
\alias{HTML.summary.rlm}
\alias{HTML.tskernel}
\alias{HTML.tukeyline}
\alias{HTML.tukeysmooth}
\alias{HTML.unit}
\alias{HTML.viewport}  
\alias{HTML.reStruct}
\alias{HTML.summary.lme}   
\alias{HTML.summary.pdDiag}



\title{Outputs an object to a HTML file}
\description{
  
  Generic method equivalent to print that performs HTML output for any R object.
}
\usage{
HTML(x, ...)
}
\arguments{
  \item{x}{ R object to export }
  \item{\dots}{ ...}
}
\details{
 \code{HTML} function acts like \code{cat}, with a \code{file} argument, which has to be used and a \code{append} argument, which is set by default to TRUE. A convenient default value for \code{file} argument is set to hidden variable \code{.HTML.file}, so that one may begin to set this variable and omit the argument thereafter.
 Most of the current classes are handled by \code{HTML} function. Some specific methods such as \code{HTML.matrix} or \code{HTML.data.frame} do own a lot of arguments to specify the way the data are exported.
}
\value{
	no value returned.  
}
\author{ Eric Lecoutre }

\note{ For a discussion about .HTML.file default value for file argument, refer to \code{\link{HTMLStart}} }

\seealso{\code{\link{HTML.data.frame}},\code{\link{HTML.function}},  \code{\link{HTMLStart}}}

\examples{
dir.create(file.path(tempdir(),"R2HTML"))
target <- HTMLInitFile(file.path(tempdir(),"R2HTML"),filename="sample", BackGroundColor="#BBBBEE")
HTML("<br>Don't forget to use the CSS file in order to benefit from fixed-width font",file=target)
tmp <- as.data.frame(matrix(rnorm(100),ncol=10))
HTML(tmp,file=target)
HTMLEndFile()
}
\keyword{ print }
\keyword{ IO }
\keyword{ file }

