# This script was created by Manpreet Dhami (Manaaki Whenua Landcare Research) and Ben Roberts (NeSI)
# The script shows how to use plink software to convert vcf data to bed format
# After the conversion the data can be used by fastStructure software

#!/bin/bash -e

###########################
# Setup SLURM Environment #
###########################

#You need to modify the line below to insert correct project name

#SBATCH --account [PROJECT_NAME_HERE]
#SBATCH --job-name plink
#SBATCH --cpus-per-task 2
#SBATCH --time 24:00:00
#SBATCH --mem-per-cpu=1G
#SBATCH --output plink-%j.out
#SBATCH --error plink-%j.err
#SBATCH --nodes=1 #default

module load PLINK/1.09b3.32

#Modify the line below to include the correct path to your project data, then uncomment and save the file
#plink --vcf //nesi/project/PATH_TO_YOUR_DATA/final_strains.vcf.gz --maf 0.05 --make-bed --out //nesi/project/PATH_TO_YOUR_DATA/final_strains --allow-extra-chr 
