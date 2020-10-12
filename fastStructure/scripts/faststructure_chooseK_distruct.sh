# This script was developed by Manpreet Dhami (Manaaki Whenua Landcare Research) and Ben Roberts (NeSI NZ)


#!/bin/bash -e

###########################
# Setup SLURM Environment #
###########################

#SBATCH --account YOUR_PROJECT_NAME
#SBATCH --job-name chooseK
#SBATCH --cpus-per-task 4
#SBATCH --time 3:00:00
#SBATCH --mem-per-cpu=1G
#SBATCH --output chooseK-%j.out
#SBATCH --error chooseK-%j.err
#SBATCH --nodes=1 #default

#Directories
workingdir=$HOME/fastStructure_workshop
vcfdir="${workingdir}/data"
#Genome="MR1_a10"
scripts="${workingdir}/scripts"
prior="simple"

#Modules
module load Python/3.6.3-gimkl-2017a
module load fastStructure/1.0-gimkl-2017a-Python-2.7.14


# Need to add module loading 
# See https://support.nesi.org.nz/hc/en-gb/articles/360000474535-Installing-Third-Party-applications


for K in 1 2 3 4 5 6 7 8 9 10 
		do
python "${EBROOTFASTSTRUCTURE}/bin/distruct.py" \
			-K $K \
			--input=${vcfdir}/output/${prior}/final_strains \
			--output=${vcfdir}/output/${prior}/final_strains_"$K".svg
			
		done
