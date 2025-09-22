#!/bin/bash --login

#SBATCH --time=48:00:00   # walltime
#SBATCH --ntasks=32   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=4000M   # memory per CPU core
#SBATCH -J "Prune_Graph"   # job name

tail -n +2 All_Samples.ld > All_Samples_WH.ld

./target/release/prune_graph --in All_Samples_WH.ld --n-threads 32 --weight-field column_7 --weight-filter "column_3 < 10000 && column_7 <= 0.2" --mode 1 --out All_Samples.id

