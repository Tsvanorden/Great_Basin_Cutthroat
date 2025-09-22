#!/bin/bash --login

#SBATCH --time=72:00:00   # walltime
#SBATCH --ntasks=92   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=4144M   # memory per CPU core
#SBATCH -J "ngsLD"   # job name

BASEDIR=~/compute/01.RawData
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/apps/spack/root/opt/spack/linux-rhel7-haswell/gcc-11.3.0/gsl-2.7.1-hktznfrcg5qkeixgvqs7caiq5tm7ykyr/lib

export LD_LIBRARY_PATH

./ngsLD \
--geno ../Fully_Updated_ForLD.beagle.gz \
--pos  ../Fully_Updated_Pos_LD.mafs.gz \
--probs \
--n_ind 498 \
--n_sites 6788441 \
--n_threads 92  \
--out  ~/groups/grp_green_river_cutt/nobackup/archive/Green_River_Data/HG7GMDSXF/9229/Bam/All_Samples_92_Threads.ld
