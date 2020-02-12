install.packages("Bioconductor")
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install()
install.packages("ape")
install.packages("ggplot2")
BiocManager::install("ggtree")
BiocManager::install("Biostrings")
library(ape)
library(ggplot2)
library(ggtree)
library(Biostrings)

nwk <- system.file("extdata", "sample.nwk", package="ggtree")
tree <- read.tree(nwk)
tree



