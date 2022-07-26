% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PLColors.R
\name{pl_palette}
\alias{pl_palette}
\title{PL Palette Generator.}
\usage{
pl_palette(name, n, type = c("discrete", "continuous"))
}
\arguments{
\item{name}{Name of the color palette. Options are \code{pride}, \code{gatsby}, \code{gatsby2},
\code{catcher}, \code{lotr}, \code{tender}, \code{anna}, \code{TKAM}, \code{TKAM2}, \code{peter}, \code{farewell}, \code{feast}, \code{orange}, \code{lunch},
\code{solitude}, \code{dalloway}, \code{huck}, \code{lotf}, \code{cuckoo},\code{dune},\code{prince},\code{war}, \code{harry},\code{lorax},\code{foundations},\code{boc},
\code{master},\code{alice},\code{fountainhead},\code{pi},\code{hobbit},\code{matilda}, \code{road}}

\item{n}{Number of colors in the palette. Palletes include 5-8 colors, which can be used discretely,
or if more are desired, used as a gradient. If omitted, n = length of palette.}

\item{type}{Usage of palette as "continuous" or "discrete". Continuous usage interpolates between colors to create
a scale of values. If omitted, function assumes continuous if n > length of palette, and discrete if n < length of palette.}
}
\value{
A vector of colors.
}
\description{
PL Palette Generator.
}
\examples{
pl_palette("orange",n=10,type="continuous")
pl_palette("hobbit",n=3)
pl_palette("gatsby",n=10)

}
