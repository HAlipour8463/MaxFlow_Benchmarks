#!/bin/bash
#SBATCH --job-name=ccd
#SBATCH --partition=cloud
#SBATCH --time=20:00:00
#SBATCH --mem=64G
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1

module load GCC

cd /data/cephfs/punim0836/C/netflow/generators/network/ccd/

for ((i=10;i<=28;i++)); 
do 
  for j in {1..20}
  do
       sbatch --mem=64G --time=20:00:00 --ntasks=1 --cpus-per-task=1 --partition=cloud ccd_max_global $i $j
  done
done
