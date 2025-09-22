# Quality Control and Read Mapping for Great Basin National Park Cutthroat Trout Study

Here is all of the code/analyses used to remove adapters and map reads to a Cutthroat Trout genome.


First, read quality was checked using fastqc for each file

Second, trimmomatic.sh was run on all files. Format examples for the input are provided in samples.txt and samples.tsv

Third, the Cutthroat Trout genome was used to build a mapping reference

Fourth, trimmed reads were mapped to the Cutthroat Trout genome using the map_sort_filter.sh script. This used the same input as samples.txt and samples.tsv

Fifth, after reads were mapped, each genome was deduplicated and overlapping regions were cutting using dedup.overlap.sh

Finally, map quality and coverage for each sample were calculated using the script Coverage.sh
