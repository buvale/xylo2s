\name{tidy_UP}
\alias{tidy_UP}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
tidy_UP(data, HP, ID, Y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
%%     dataset with wood anatomical measures of cell traits with relative horizontal and vertical position
}
  \item{HP}{
%%     Horizontal position
}
  \item{ID}{
%%     TIndividual code for trees
}
  \item{Y}{
%%     Year of measurements
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  when a vector is defined it returnes the dataset with the relative position of each cell computed on the base of percentiles
%% ...
}
\references{
%% the full protocol is described in Buttò, Valentina, Sergio Rossi, Annie Deslauriers, and Hubert Morin. "Is size an issue of time? Relationship between the duration of xylem development and cell traits." Annals of botany (2019).
}
\author{
%%  Valentina Buttò
}
\note{
%%  the package is based
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (data, HP, ID, Y)
{
    data \%>\% group_by(!(!Y), !(!ID)) \%>\% mutate(`:=`(shp, !(!ntile(HP,
        100))))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
