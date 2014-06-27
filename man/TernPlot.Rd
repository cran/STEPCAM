\name{TernPlot}
\alias{TernPlot}
\title{
  Create a ternary plot from results of the STEPCAM_ABC function
}
\description{
  This function plots the obtained combinations of Stochasticity (random removal), Filtering and Competition (limiting similarity) of best fitting models in a Ternary plot, similar to Figure 1 in van der Plas et al. 2013
}
\usage{
TernPlot(output)
}
\arguments{
  \item{output}{A list with the following elements: \cr
           - \code{Stoch}  a vector containing the posterior distribution for the parameter stochasticity (random removal) \cr
           - \code{Filt}  a vector containing the posterior distribution for the parameter filtering \cr
           - \code{Comp}  a vector containing the posterior distribution for the parameter competition (limiting similarity) \cr
            This list is generated as output by the function STEPCAM_ABC}
}

\references{F. van der Plas, T. Janzen, A. Ordonez, W. Fokkema, J. Reinders, R.S. Etienne & H. Olff, 2013,
A new modeling approach quantifies the relative importance of different community assembly processes,
in prep.}
\author{Fons van der Plas. Adapted from the ternaryplot function from the 'vcd' package}
\examples{
Artificial.Data <- generate.Artificial.Data(numSpecies=40,numTraits=3,numCommunities=5,
                   occurence_distribution=0.2,average_richness=0.5,SD_richness=0.2,
                   random.Mechanism=FALSE);
O <- STEPCAM_ABC(Artificial.Data$abundances,Artificial.Data$traits,
                 numParticles=10,n_traits=3,plot_number=1,stopRate=0.8);
TernPlot(O);
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }
