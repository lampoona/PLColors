
# 1.Create the color palettes
#::::::::::::::::::::::::::::::::::::::::::::::
#' Complete list of palettes
#'
#' Use \code{names(pl_palettes)} to view list of palette names.
#'
#' @export
pl_palettes <- list(
  pride = rbind(c('#6568A6','#D9A86C','#F2F1E9','#89ABD9','#148BA6'),c(1,2,3,4,5)),
  gatsby = rbind(c('#011640','#012E40','#026873','#F2AE2E','#D98E32'),c(1,4,3,2,5)),
  gatsby2 = rbind(c('#082B8A','#2142A6','#5195DB','#F9EA0E','#F5D58B'),c(4,1,3,2,5)),
  catcher = rbind(c('#F2CD5E','#D99B66','#D9CEC5','#BF0404','#590202'),c(1,4,5,3,2)),
  lotr = rbind(c('#193B2A','#611310','#F2BE5C','#246485','#0F2957'),c(1,2,3,5,4)),
  tender= rbind(c('#03588C','#3A592C','#6C8C3B','#F2921D','#F25D27'),c(1,4,5,2,3)),
  anna = rbind(c("#360D1D","#DFCBC4","#F0E4CE","#87ADC0","#425772","#100C1B"),c(3,5,1,2,6,4)),
  TKAM = rbind(c('#02006A','#5886F8','#E5D0F2','#060FBF','#06080D'),c(1,3,2,4,5)),
  TKAM2 = rbind(c("#7D2A1F","#449A3D","#88B178","#F6EBDA","#14161A"),c(1,4,5,2,3)),
  peter = rbind(c('#1F4957','#027368','#DBDB93','#D9A441','#BF4F36'),c(1,3,5,2,4)),
  farewell = rbind(c('#566D8C','#8C6432','#F2D1B3','#F25430','#C84535'),c(1,4,3,2,5)),
  feast = rbind(c('#2A494B','#D99923','#F2B705','#D9CDB8','#99BFAD'),c(1,4,3,5,2)),
  orange = rbind(c('#048ABF','#378C3C','#F2CF1D','#FF8F23','#D92323','#151426'),c(5,3,2,4,1,6)),
  lunch = rbind(c('#18668D','#1F92BF','#AFD7E7','#E2D3BF','#F05D34','#C12E0C'),c(2,5,3,6,1,4)),
  solitude = rbind(c('#488C03','#04BFAD','#D7F205','#F26DC4','#F26B1D'),c(5,3,1,2,4)),
  dalloway = rbind(c('#3C5973','#D5F2EA','#D9CBA0','#A69F92','#F26B6B'),c(1,2,4,5,3)),
  huck= rbind(c('#384927','#458C49','#E2D684','#DEB134','#594302'),c(4,1,3,2,5)),
  lotf = rbind(c('#591902','#C7601D','#FADC3E','#5A7302','#324001'),c(4,5,2,1,3)),
  cuckoo = rbind(c('#BF266E','#088C37','#565904','#D91111','#F29F05'),c(1,3,5,4,2)),
  dune = rbind(c('#252940','#F2CA50','#F2A25C','#BF5B21','#D94711'),c(1,2,4,3,5)),
  prince= rbind(c('#BAAEBF','#80748C','#D2D6D9','#95A685','#F2D857'),c(1,5,3,4,2)),
  war = rbind(c('#1E6B6A','#4EA686','#74BDB0','#E9D8BC','#A3AAD0'),c(1,4,3,2,5)),
  harry = rbind(c('#A63C58','#D9A3C0','#2E608C','#F2C230','#725689'),c(1,4,3,2,5)),
  lorax = rbind(c('#F2727D','#80D2F2','#5EBF64','#F2DC6B','#F2B84B'),c(1,2,4,3,5)),
  foundations = rbind(c('#F28095','#3F3B5C','#F2EDDC','#F27B35','#AD7BA1'),c(1,2,3,4,5)),
  boc = rbind(c('#3BBCD9','#EFEED2','#F2CD13','#F50C0C','#280D0D'),c(1,2,3,4,5)),
  master= rbind(c('#202819','#BF2431','#F2BE22','#F6E3B8','#E89D88','#7A9CA5'),c(6,2,4,5,3,1)),
  alice= rbind(c('#A9D2FD','#F24773','#F2D399','#F26849','#345EA7'),c(1,2,3,4,5)),
  fountainhead = rbind(c('#6B9FBF','#3370A6','#F2E9D8','#F2A2B1','#2E8C72'),c(4,1,3,2,5)),
  pi = rbind(c('#0F2770','#16558C','#DEECF5','#FF7431','#E93C14'),c(4,1,3,2,5)),
  hobbit = rbind(c('#2F4C73','#022601','#4F8C3E','#5EA64B','#F2E2C4'),c(1,4,2,5,3)),
  matilda = rbind(c('#2A4B8C','#348ABF','#BF78A6','#F2D541','#F2D8D5'),c(1,3,4,2,5)),
  road = rbind(c('#584C3E','#D9B760','#F2DCB3','#F2AFB3','#BF3030'),c(1,3,4,2,5))
)


# 2. Palette builder function
#::::::::::::::::::::::::::::::::::::::::::::::

#' PL Palette Generator.
#'
#'
#' @param name Name of the color palette. Options are \code{pride}, \code{gatsby}, \code{gatsby2},
#' \code{catcher}, \code{lotr}, \code{tender}, \code{anna}, \code{TKAM}, \code{TKAM2}, \code{peter}, \code{farewell}, \code{feast}, \code{orange}, \code{lunch},
#' \code{solitude}, \code{dalloway}, \code{huck}, \code{lotf}, \code{cuckoo},\code{dune},\code{prince},\code{war}, \code{harry},\code{lorax},\code{foundations},\code{boc},
#' \code{master},\code{alice},\code{fountainhead},\code{pi},\code{hobbit},\code{matilda}, \code{road}
#' @param n Number of colors in the palette. Palletes include 5-8 colors, which can be used discretely,
#' or if more are desired, used as a gradient. If omitted, n = length of palette.
#' @param type Usage of palette as "continuous" or "discrete". Continuous usage interpolates between colors to create
#' a scale of values. If omitted, function assumes continuous if n > length of palette, and discrete if n < length of palette.
#'
#' @return A vector of colors.
#'
#' @examples
#' pl_palette("orange",n=10,type="continuous")
#' pl_palette("hobbit",n=3)
#' pl_palette("gatsby",n=10)
#'
#' @export
pl_palette <- function(name, n, type = c("discrete", "continuous")) {

  pal <- pl_palettes[[name]]


  if (is.null(pal)){
    stop("Palette not found.")
  }

  if (missing(n)) {
    n <- length(pal[1,])
  }

  if (missing(type)) {
    if(n > length(pal[1,])){type <- "continuous"}
    else{ type <- "discrete"}
  }
  type <- match.arg(type)


  if (type == "discrete" && n > length(pal[1,])) {
    stop("Number of requested colors greater than what discrete palette can offer, \n  use as continuous instead.")
  }


  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal[1,])(n),
                discrete = pal[1,][pal[2,] %in% c(1:n)],
  )
  structure(out, class = "PLpalette", name = name)

}

#' @export



# 3. Palette Print Function
#::::::::::::::::::::::::::::::::::::::::
#' @importFrom graphics rect par image text
#' @importFrom stats median

print.PLpalette <- function(x, ...) {
  pallength <- length(x)
  PLpar <- par(mar=c(0.25,0.25,0.25,0.25))
  on.exit(par(PLpar))

  image(1:pallength, 1,
        as.matrix(1:pallength),
        col = x,
        axes=FALSE)

  text(median(1:pallength), 1,
       labels = paste0(attr(x,"name"),", n=",pallength),
       cex = 3, family = "sans", col="black")
}





