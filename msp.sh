#!/bin/bash                                                                                                            

#SBATCH --partition=Centaurus                                                                                         \
                                                                                                                       
#SBATCH --job-name=basic_slurm_job                                                                                    \
                                                                                                                       
#SBATCH --nodes=1                                                                                                     \
                                                                                                                       
#SBATCH --ntasks-per-node=8                                                                                           \
                                                                                                                       
#SBATCH --time=10:00:00                                                                                               \
                                                                                                                       
#SBATCH --mem-per-cpu=16GB                                                                                             
make clean
make

./mergesort_seq 100000
./mergesort_seq	100000 2
./mergesort_seq	100000 4
./mergesort_seq	100000 8


