#!/bin/bash --login

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=10   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=6144M   # memory per CPU core
#SBATCH -J "Index_"   # job name
BASEDIR=~/nobackup/archive/01.RawData
REF=~/nobackup/archive/01.RawData/Cutthroat/PGA_assembly.fasta

conda activate ANGSD

~/nobackup/archive/01.RawData/New_Analyses/angsd/./angsd -b Population.txt \
    -ref $REF \
    -anc $REF \
    -out $BASEDIR/New_Analyses/SFS/Population \
    -uniqueOnly 1 \
    -remove_bads 1 \
    -only_proper_pairs 1 \
    -trim 0 \
    -minMapQ 40 \
    -minQ 30 \
    -minInd 5 \
    -doCounts 1 \
    -GL 1 \
    -doSaf 1 \
    -nThreads 8 \
    -sites ~/nobackup/archive/01.RawData/Cutt_results/ngsLD/New_analyses/LDpruned_snps.list

