# This script was developed by Manpreet Dhami (Manaaki Whenua Landcare Research) and Ben Roberts (NeSI NZ)
#!/bin/bash -e

###########################
# Setup SLURM Environment #
###########################

#SBATCH --account YOUR_PROJECT_NAME
#SBATCH --job-name faststructure
#SBATCH --cpus-per-task 8
#SBATCH --time 48:00:00
#SBATCH --mem-per-cpu=3G
#SBATCH --output faststructure-%j.out
#SBATCH --error faststructure-%j.err
#SBATCH --nodes=1 #default



# Default values
workingdir="$HOME/fastStructure_workshop"
vcfdir="${workingdir}/data/"
scripts="${workingdir}/scripts/"
faststructure="${workingdir}/modules/fastStructure"

 
module load Python/3.6.3-gimkl-2017a
module load fastStructure/1.0-gimkl-2017a-Python-2.7.14



# Need to add module loading?
# See https://support.nesi.org.nz/hc/en-gb/articles/360000474535-Installing-Third-Party-applications


#Create new faststructure dir

for prior in simple logistic
	do
	for K in 1 2 3 4 5 6 7 8 9 10
		do
			
		python "${faststructure}/bin/structure.py" \
			-K $K \
			--input=${vcfdir}/final_strains \
			--output=${vcfdir}/output/${prior}/final_strains \
			--tol=0.00001 \
			--prior=$prior \
			--cv=0 \
			--format=bed \
			--full
			
		done
	done
