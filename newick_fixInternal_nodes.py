#!/usr/bin/env python
import sys
from Bio import Phylo
if len(sys.argv) != 3:
	sys.stderr.write("Error: check your arguments: <IN.newick> <OUT.newick>\n")
	exit(-1)
def clade_names_fix(tree):
	for idx, clade in enumerate(tree.find_clades()):
		if not clade.name:
			clade.name="id_%s"%(idx)
# LOAD
Tree = Phylo.read(sys.argv[1], 'newick')
#FIX internal node names
clade_names_fix(Tree)
# SAVE
with open(sys.argv[2], "w") as FHout:
	Phylo.write(Tree, FHout, 'newick')