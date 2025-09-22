# Great_Basin_Cutthroat

Here is all of the code/analyses used to analyze the population genomics of Cutthroat Trout in Great Basin National Park with ANGSD.


First, Call_sites_BeforeLD.sh was run to identify all variable sites

Second, LD_Pruning.sh was used to calculate R^2 values for all sites, and Prune_Graph.sh was then used to generate a list of sites not in linkage disequilibrium

Third, PCA.sh was run using this trimmed sites.

Fourth, SAF.sh and SFS.sh were run to calculate the site frequency spectrum for each population. SFS.sh also performed a sliding window analysis that was used as the input for Nucleotide Diversity estimation, and a bootstrap analysis from populations with contemporary and historic samples that was used for heterozygosity estimation. These scripts also calculated the Fst for all pairwise population comparisons.


Fifth, Non_Historic_Heterozygosity.R was used to calculated heterozygosity for all populations. As it became apparent that genetic diversity was not normally distributed, Non_Historic_Heterozygosity.R was not used for historic populations and Historic_Heterozygosity_Bootstrap.R was used instead.

Sixth, Nucleotide Diversity was calculated for all populations using Nucleotide_Diversity_No_Bootstrap.R. Similarly to heterozygosity, as it became apparent that genetic diversity was not normally distributed, Nucleotide_Diversity_With_Bootstrap.R was used to calculate the nucleotide diversity of historic and contemporary populations to avoid assuming a normal distribution.
