#!/bin/bash
#SBATCH --mem=32G             # memory, roughly 2 times %mem defined in the input name.com file
#SBATCH --time=01-00:00       # expect run time (DD-HH:MM)
#SBATCH --cpus-per-task=32    # No. of cpus for the job as defined by %nprocs in the name.com file
#SBATCH --mail-user=lsyurievna@mun.ca
#SBATCH --mail-type=ALL
module load gaussian/g16.c01
g16 < input.com >& output.log
