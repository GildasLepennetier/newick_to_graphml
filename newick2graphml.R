#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)
if(length(args) != 2){
	write(x = "Error: unexpected arguments\n",file = stderr())
	write(x = "Usage: <infile.newick> <outfile.graphml>",file = stderr())
	quit('no')
}
library('ape')
library('phytools')
library('igraph')
#Use newick_fixInternal_nodes.py before starting here. no double check implemented yet
INFILE=args[1] 
OUTFILE=args[2] 
TREE=phytools::read.newick(INFILE)
GRAPH=ape::as.igraph.phylo(TREE)
igraph::write.graph(GRAPH,format="graphml",file=OUTFILE) 
