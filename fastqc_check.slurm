#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --mem=2G
#SBATCH --time=0-01:00:00
#SBATCH --array=1-12
#SBATCH --job-name=fastqc
#SBATCH --output=fastqc_2563_%A_%a.out
#SBATCH --error=fastqc_2563_%A_%a.out
#SBATCH --mail-user=xiaodong.zhu.1@vumc.org
#SBATCH --mail-type=ALL


# here let's try to get the sub folder name inside the data 
echo "Slurm jobid:" $SLURM_JOBID
echo "SLURM Array task:" $SLURM_ARRAY_TASK_ID
echo "SLURM_Array JOB id:" $SLURM_ARRAY_JOB_ID
 


# load in the standard modules
fastqc=/scratch/zhux12/software/FastQC 
export PATH=$fastqc:$PATH
module load Java/1.8.0_92
fastqc   /scratch/zhux12/newData/old_2563/*${SLURM_ARRAY_TASK_ID}_1*.txt.gz 
fastqc  /scratch/zhux12/newData/old_2563/*${SLURM_ARRAY_TASK_ID}_2*.txt.gz 
