library("tidyverse")

#loop through the files with comparison between human genome
# and create a data frame which then can be saved as CSV

files = list.files( path="data", pattern="*_stats", full.names=TRUE)
human_animal_df <- data.frame(human_prot=character(), 
                              stringsAsFactors = FALSE)

for(i in 1:length(files)){
  stats <- read.table(files[i])
  if (i == 1) {
  human_animal_df[nrow(human_animal_df)+1, ] <- c(stats$V1[1])
  human_animal_df[ ,ncol(human_animal_df)+1] <- c(stats$V1[3])
  names(human_animal_df)[ncol(human_animal_df)] <- stats$V1[2]
  }
  else{
    human_animal_df[ ,ncol(human_animal_df)+1] <- c(stats$V1[3])
    names(human_animal_df)[ncol(human_animal_df)] <- stats$V1[2]
  }

}


