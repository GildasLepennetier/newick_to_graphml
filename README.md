# newick_to_graphml

The scripts/logic was integrated in the official Cytoscape documentations
there: http://cytoscape.org/cytoscape-automation/for-scripters/R/notebooks/Phylogenetic-trees.nb.html

## description

Those are two scripts to use if you want to make the conversion.
If their location is on your path, you may be able to call them as commands from a terminal.

## install and requirements

### R
    install.packages('ape')
    install.packages('phytools')
    install.packages('igraph')

### Python 3.3+
Biopython is required. 

    pip install biopython

(check https://biopython.org)

## usage

If script directory is in the path, you can call the functions using the name of the scrips (remember to check if they are executable, use: chmod +x). 
They will discplay an help message explaining for to use them.

Use them in this order:

    newick_fixInternal_nodes.py IN.newick OUT.newick
    newick2graphml.R infile.newick outfile.graphml

The first function create proper ID for internal nodes (use their index).
The second one use the power of R to convert to graphml format.
You can modify the script quite easily to create columns of annotations supported by graphml format, e.g. use informations on the name fo your node to annotate using V(GRAPH)$color = "red". 

## copy and guaranties

Provided without guaraties, in the condition in which you find it.
If you use it for an article, put the link in the aknowledgment.
Do not use to make money, and don't be evil.
If you improve it, please let me know.
