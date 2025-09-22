#!/bin/bash
#SBATCH -J "FastCoverage"
#SBATCH -o slurm.%j.out
#SBATCH -e slurm.%j.err
#SBATCH --time=12:00:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=6000M

module load samtools

echo "Job started on $(hostname) at $(date)" >&2
module list >&2

# List of BAM files (one per line)
BAM_LIST="All_Samples.txt"

# Output file
OUTFILE="SB_coverage_summary.tsv"
echo -e "Sample\tMean_Depth\tBreadth_1x\tBreadth_5x\tMapping_Rate" > "$OUTFILE"

# Loop through BAM files
while read -r BAM; do
    SAMPLE=$(basename "$BAM" .bam)

    echo "Processing $SAMPLE" >&2

    # Coverage stats
    MEAN_DEPTH=$(samtools depth -aa "$BAM" | awk '{sum+=$3} END {if(NR>0) print sum/NR; else print 0}')
    BREADTH_1X=$(samtools depth -aa "$BAM" | awk '{if($3>=1) c++} END {if(NR>0) print c/NR*100; else print 0}')
    BREADTH_5X=$(samtools depth -aa "$BAM" | awk '{if($3>=5) c++} END {if(NR>0) print c/NR*100; else print 0}')

    # Mapping rate (% mapped reads)
    MAPPING_RATE=$(samtools flagstat "$BAM" | awk '/ mapped \(/ {gsub(/\(|\)|%/,"",$5); print $5; exit}')

    # Append results
    echo -e "${SAMPLE}\t${MEAN_DEPTH}\t${BREADTH_1X}\t${BREADTH_5X}\t${MAPPING_RATE}" >> "$OUTFILE"

    echo "Finished $SAMPLE" >&2
done < "$BAM_LIST"
