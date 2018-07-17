---
title: "Protist Phylogeny Project"
author: "Hannah Chu"
date: "2018-07-16"
output:
  prettydoc::html_pretty:
  theme: cayman
toc: yes
pdf_document:
  number_sections: yes
toc: yes
---
# Library
  
```{r}
  library(DiagrammeR)
```

# Overall Workflow

```{r}
mermaid("
  graph TD
  A[Review lit and collect common protist species & include uncertain protists from TOL] --create datasheet --> B[genus, species, geneID]
  B -- organize by gene --> C[create fasta file of sequences]
  C -- CIPRES --> D[create alignments ClustalW]
  D --> E[create different phylogenetic trees based on different genes]
  E -- R ape package --> F[examine statistical differences of phylogenetic trees]
  F --> G[compare trees and look for conflicts]
  G --> H[compare results to literature]"
        )
```

# Session Info
```{r}
sessionInfo()
```