
# PLOT.MATRIX
install.packages("plot.matrix")
library(plot.matrix)
## numeric vector
x <- runif(10)
x
assignColors(x)
# set breaks
assignColors(x, breaks=15)
assignColors(x, breaks=c(0,1))
# set colors
assignColors(x, col=c("red", "green", "blue"))
assignColors(x, col=topo.colors)
# NA and out-of-range
x[5] <- NA
assignColors(x, breaks=seq(0.5, 1, by=0.1), na.col="red")
## logical vector
l <- sample(c(NA, TRUE, FALSE), size=10, replace=TRUE)
assignColors(l)
assignColors(l, breaks=c("FALSE", "TRUE"), col=c("red", "blue"))
## character vector
t <- sample(letters, size=10, replace=TRUE)
assignColors(t)
assignColors(t, col=rainbow(5))

data(bfi.2)
bfi.2
install.packages("psych")
library('psych')
fa <- fa(bfi.2, 5, rotate="varimax")
par(mar=c(5.1, 4.1, 4.1, 4.1)) # adapt margins
plot(loadings(fa), cex=0.5)

data(bfi.2)
library("psych")
par(mar=c(5.1, 4.1, 4.1, 4.1))
# Factor analysis
fa <- factanal(bfi.2, 5)
plot(loadings(fa))
# Principal Component Analysis I
pa <- princomp(bfi.2)
plot(loadings(pa), digits=NA)
# Principal Component Analysis II
pa <- prcomp(bfi.2)
ld <- structure(pa$rotation, class="loadings")
plot(ld, digits=NA)



