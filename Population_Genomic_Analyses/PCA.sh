#!/bin/bash --login

#SBATCH --time=144:00:00   # walltime
#SBATCH --ntasks=8   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=9000M   # memory per CPU core
#SBATCH -J "PCA"   # job name
BASEDIR=~/nobackup/archive/01.RawData
REF=~/nobackup/archive/01.RawData/Cutthroat/PGA_assembly.fasta


conda activate ANGSD

angsd -b All_Samples_Updated.txt  -anc $REF -out ~/nobackup/archive/01.RawData/New_Analyses/All_Samples_Updated  \
    -nThreads 8 -GL 1 -doGlf 2 -doMajorMinor 3 -doMAF 1 -doGeno 1 -doPost 1 -doIBS 1 -doCounts 1 -doCov 1 -makeMatrix 1 -doPlink 2 -sites ~/nobackup/archive/01.RawData/Cutt_results/ngsLD/New_analyses/LDpruned_snps.list
