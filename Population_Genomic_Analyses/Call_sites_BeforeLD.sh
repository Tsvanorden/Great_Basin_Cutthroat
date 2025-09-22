#!/bin/bash --login

#SBATCH --time=120:00:00   # walltime
#SBATCH --ntasks=8   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=9000M   # memory per CPU core
#SBATCH -J "SNP"   # job name
BASEDIR=~/nobackup/archive/01.RawData



conda activate ANGSD

angsd \
  -GL 1 \
  -nThreads 8 \
  -doGlf 2 \
  -doMajorMinor 1 \
  -doMaf 1 \
  -minInd 5 \
  -minMaf 0.05 \
  -minQ 30 \
  -minMapQ 40 \
  -remove_bads 1 \
  -uniqueOnly 1 \
  -only_proper_pairs 1 \
  -bam $BASEDIR/Cutt_bam/All_Samples \
  -out $BASEDIR/New_Analyses/Fully_Updated
