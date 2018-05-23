#clear all 
rm(list=ls())

setwd("directory for csv files")
files = list.files(pattern = ".csv")
df.raw = read.csv(files[1])

for (f in files[-1]){
  df.all = read.csv(f)
  df.raw = rbind(df.raw, df.all)
}

write.csv(df.raw,"df.raw.csv")
