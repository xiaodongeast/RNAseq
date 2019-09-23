#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --mem=9G
#SBATCH --time=0-06:00:00
#SBATCH --job-name=align_one
#SBATCH --mail-user=xiaodong.zhu.1@vumc.org
#SBATCH --mail-type=ALL


# here let's try to get the sub folder name inside the data 



# load in the standard modules
module restore ngs1 

hisat2 -p 16 -x /scratch/zhux12/mouse_index_st/genome_tran   -1  /scratch/zhux12/Peter_RNAseq/2563-MAG-2_1_sequence.txt.gz  -2 /scratch/zhux12/Peter_RNAseq/2563-MAG-2_2_sequence.txt.gz  -S /scratch/zhux12/Peter_RNAseq/2563-MAG-2.sam
