# PLColors <img align="right" src="ReadMeFigures/PLColors_logo_1.png" width=400>
PLColors (Public Library Colors) is an R Color palette package inspired by classic books found at the local public library.  


Palettes were extracted from vintage book covers using [Adobe Color](https://color.adobe.com/create/image). Using Adobe Color's accessibility tool, a majority of palettes are rendered to be <b>color-blind safe</b> for beautiful and inclusive data visualizations. 


Code was structured after [`wesanderson`](https://github.com/karthik/wesanderson) and [`PNWColors`](https://github.com/jakelawlor/PNWColors/) packages. The project was inspired by the release of my favorite palette library [`MetBrewer`](https://github.com/BlakeRMills/MetBrewer). The final product was packaged for R thanks to the great tutorial from [`Karl Broman`](https://kbroman.org/pkg_primer/).

[Installation](#install-package)  
[Functions](#building-palettes)   
[Examples](#example-plots)  
[Palettes](#palettes)  
[Contact](#contact)  


## Install Package
```r
install.packages("devtools") 
devtools::install_github("lampoona/PLColors") 
```

## Usage

```r
library(PLColors)

names(pl_palettes)
[1] "pride"        "gatsby"       "gatsby2"      "catcher"      "lotr"     
[6] "tender"       "anna"         "TKAM"         "TKAM2"        "peter"     
[11] "farewell"     "feast"        "orange"       "lunch"       "solitude"  
[16] "dalloway"     "huck"         "lotf"         "cuckoo"      "dune"      
[21] "prince"       "war"          "harry"        "lorax"       "foundations" 
[26] "boc"          "master"       "alice"        "fountainhead" "pi"        
[31] "hobbit"       "matilda"      "road"          
 ```

All Palettes 

<img src="ReadMeFigures/all_palettes_final.png">

## Building Palettes 

Use the `pl_palette()` function to build and view palettes. Inputs are 'name', 'n', and 'type' (continuous or discrete). 'Name' is required. If 'n' is blank, function will assume n is equal to the number of colors in the palette (5-6), but if n > palette length, it will automatically interpolate colors between. If 'type' is missing, the function will assume "discrete" if n < palette length, and "continuous" if n > palette length. 

```r
pl_palette(name="anna",n=10,type="continuous")
```

<img src="ReadMeFigures/anna.10.png">

```r
pl_palette("tender",100)
```

<img src="ReadMeFigures/tender.100.png">

```r
pl_palette("pride",n=4)
```

<img src="ReadMeFigures/pride.4.png">

```r
pl_palette("huck",20)
```

<img src="ReadMeFigures/huck.20.png">


## Palettes


<img src="ReadMeFigures/alice.jpg">

  - Alice's Adventures in Wonderland - by Lewis Carroll
  
***

<img src="ReadMeFigures/anna.jpg">

  - Anna Karenina - by Leo Tolstoy
  
***

<img src="ReadMeFigures/boc.jpg">

  - Breakfast of Champions - Kurt Vonnegut
  
***

<img src="ReadMeFigures/catcher.jpg">

  - Catcher in the Rye - J.D. Salinger
  
***

<img src="ReadMeFigures/cuckoo.jpg">

  - One Flew Over the Cuckoo's Nest - Ken Kesey
  
***

<img src="ReadMeFigures/dalloway.jpg">

  - Mrs. Dalloway - Virginia Woolf
  
***

<img src="ReadMeFigures/dune.jpg">

  - Dune - Frank Herbert
  
***

<img src="ReadMeFigures/farewell.jpg">

  - A Farewell to Arms - Ernest Hemingway 
  
***

<img src="ReadMeFigures/feast.jpg">

  - A Moveable Feast - Ernest Hemingway 
  
***

<img src="ReadMeFigures/foundations.jpg">

  - Foundations - Isaac Asimov
  
***

<img src="ReadMeFigures/gatsby1.jpg">

  - The Great Gatbsy - F. Scott Fitzgerald
  
***

<img src="ReadMeFigures/gatsby2.jpg">

  - The Great Gatbsy - F. Scott Fitzgerald
  
***

<img src="ReadMeFigures/harry.jpg">

  - Harry Potter and the Sorcerer's Stone - J.K. Rowling
  
***

<img src="ReadMeFigures/hobbit.jpg">

  - The Hobbit - J.R.R. Tolkien
  
***

<img src="ReadMeFigures/lotr.jpg">

  - The Lord of the Rings Trilogy - J.R.R. Tolkien
  
***


<img src="ReadMeFigures/huck.jpg">

- The Adventures of Huckleberry Finn - Mark Twain

***

<img src="ReadMeFigures/lorax.jpg">

  - The Lorax - Dr. Seuss 
  
***

<img src="ReadMeFigures/lotf.jpg">

  - Lord of the Flies - William Golding
  
***

<img src="ReadMeFigures/lunch.jpg">

  - Lunch Poems - Frank O'Hara
  
***

<img src="ReadMeFigures/master.jpg">

  - The Master and Margarita - Mikhail Bulgakov
  
***

<img src="ReadMeFigures/matilda.jpg">

  - Matilda - Roald Dahl
  
***

<img src="ReadMeFigures/orange.jpg">

  - A Clockwork Orange - Anthony Burgess 
  
***

<img src="ReadMeFigures/peter.jpg">

  - Peter Pan - J.M. Barrie 
  
***

<img src="ReadMeFigures/pi.jpg">

  - Life of Pi - Yann Martel 
  
***

<img src="ReadMeFigures/pride.jpg">

  - Pride and Prejudice - Jane Austen 
  
***

<img src="ReadMeFigures/prince.jpg">

  - The Little Prince - Antoine de Saint-Exupery
  
***

<img src="ReadMeFigures/road.jpg">

  - On the Road - Jack Kerouac 
  
***

<img src="ReadMeFigures/solitude.jpg">

  - One Hundred Years of Solitude - Gabriel Garcia Marquez 
  
***

<img src="ReadMeFigures/tender.jpg">

  - Tender is the Night - F. Scott Fitzgerald 
  
***

<img src="ReadMeFigures/TKAM.jpg">

  - To Kill a Mockingbird - Harper Lee 
  
***

<img src="ReadMeFigures/TKAM1.jpg">

  - To Kill a Mockingbird - Harper Lee 
  
***

<img src="ReadMeFigures/war.jpg">

  - War and Peace - Leo Tolstoy
  
***

## Example Plots
Palettes can be easily integrated into Base R imaging or `ggplot2`. 

Base R
```r
x <- -10:10
y <- -10:10
z <- sqrt(outer(x ^ 2, y ^ 2, "+"))
image(x, y, z, col=pl_palette("foundations",100))
```
<center><img src="ReadMeFigures/found.100.png"></center>

***
Ggplot
```r
ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) +
  geom_violin() +
  scale_fill_manual(values=pl_palette("hobbit", 3))
```
<center><img src="ReadMeFigures/hobbit.ggplot.png"></center>

```r
ggplot(data=iris, aes(x=Species, y=Sepal.Width, color=Sepal.Width)) +
  geom_point(size=3) +
  scale_color_gradientn(colors=pl_palette("gatsby"))
```
<center><img src="ReadMeFigures/gatsby.ggplot.png"></center>

```r
set.seed(1)
df <- data.frame(x = rnorm(2000), y = rnorm(2000))
ggplot(df, aes(x = x, y = y)) + geom_hex() + scale_fill_gradientn(colors=pl_palette("fountainhead",n=3)) + theme_minimal()
```
<center><img src="ReadMeFigures/fountainhead.ggplot.png"></center>

***

## Contact
Reach me at <sayeh.gorjifard@gmail.com> or 
[@lampoona](https://twitter.com/lampoona) or 
my [`website`](https://sayehgorjifard.com)

