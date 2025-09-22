#!/bin/bash --login

#SBATCH --time=60:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=20000M   # memory per CPU core
#SBATCH -J "Picard_and_bamutil"   # job name

BASEDIR=~/compute/01.RawData
BAMLIST=$BASEDIR/Cutt_bam/All_Samples.txt # Path to a list of bam files.
REFNAME=PGA_assembly.fasta

## Loop over each sample
for SAMPLEBAM in `cat $BAMLIST`; do

    conda activate Picard
    ## Remove duplicates and print dupstat file
    # We used to be able to just specify picard.jar on the CBSU server, but now we need to specify the path and version
    picard MarkDuplicates I=$BASEDIR'/Cutt_bam/'$SAMPLEBAM'bt2_'$REFNAME O=$BASEDIR'/Cutt_bam/'$SAMPLEBAM'bt2_'$REFNAME'_minq20_sorted_dedup.bam' M=$BASEDIR'/Cutt_bam/'$SAMPLEBAM'bt2_'$REFNAME'_minq20_sorted_dupstat.txt' VALIDATION_STRINGENCY=SILENT REMOVE_DUPLICATES=true

    conda activate bamutils
    ## Clip overlapping paired end reads (only necessary for paired-end data, so if you're only running se samples, you can comment this step out)
    bam clipOverlap --in $BASEDIR'/Cutt_bam/'$SAMPLEBAM'bt2_'$REFNAME --out $BASEDIR'/Cutt_bam/'$SAMPLEBAM'bt2_'$REFNAME'_minq20_sorted_dedup_overlapclipped.bam' --stats

done
