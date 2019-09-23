#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --mem=20G
#SBATCH --time=0-01:00:00
#SBATCH --job-name=featureCount
#SBATCH --output=count_SAM_2653_2.out
#SBATCH --error=count_SAM_2653_2.out
#SBATCH --mail-user=xiaodong.zhu.1@vumc.org
#SBATCH --mail-type=ALL


# here let's try to get the sub folder name inside the data 



# load in the standard modules
module restore ngs1 
# set Path

FeatureCounts=/scratch/zhux12/software
export PATH=$FeatureCounts:$PATH 

# Align
featureCounts -T 16  -p -t exon -g gene_name -a /scratch/zhux12/mouse_GRC38v93/Mus_musculus.GRCm38.93.gtf -o 2563-MAG-2-v93sam_count.txt  /scratch/zhux12/Peter_RNAseq/2563-MAG-2-v93.sam


