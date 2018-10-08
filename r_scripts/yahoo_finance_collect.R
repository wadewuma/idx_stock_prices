setwd('C:\\your\\path\\here')

install.packages(c('downloader', 'readxl', 'bitops', 'RCurl'))
library(downloader)
library(readxl)
library(bitops)
library(RCurl)

company_list <- read.csv('listed_companies.csv', header = FALSE)
head(company_list)
file_name <- as.character(company_list$V1)
head(file_name)
idx <- as.character(company_list$V3)
for (i in 1:length(idx)){
  if(url.exists(idx[i]) == TRUE){
    download(idx[i], file_name[i],mode='wb')
  }
}
