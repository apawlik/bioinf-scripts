This directory (`fastStructure`) contains materials for a workshop teaching using fastStructure software for analysing population genetics data. 


The data and scripts used come from several sources:
* prepared by Manpreet Dhami (Manaaki Whenua Landcare Research) with help from Ben Roberts (NeSI NZ)
* prepared by Andrew Veale (Manaaki Whenua Landcare Research)
* developed for the course [Population Genetics with R](https://grunwaldlab.github.io/Population_Genetics_in_R/gbs_analysis.html)
* developed for [MacroPopGen Database: Geo-referenced population-specific microsatellite data across the American continents](https://figshare.com/articles/MacroPopGen_Database_Geo-referenced_population-specific_microsatellite_data_across_the_American_continents/7207514/1)

The purpose of the workshop and the training materials in this directory is to demonstrate how to:
1. Set up your workspace using [a script](https://github.com/apawlik/bioinf-scripts/blob/master/fastStructure/scripts/setup_workshpace.sh)
2. Convert the data from various formats into a format that can be processed by `fastStructure` using `plink` software.
3. Process the data using `fastStructure`and interpret the results.

Note that the scripts are set up to use a cluster which is managed by `slurm`. In particular, the scripts which you find in this folder were set up for `Mahuika` managed by New Zealand eScience Infrastructure. 
