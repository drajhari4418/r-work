#load data----
ebola_data <- read.csv("https://tinyurl.com/ebola-data-sample")
head(ebola_data)
tail(ebola_data) #note:- print last six lines to console from data

ncol(ebola_data)

nrow(ebola_data)

dim(ebola_data) #gives col. and rows no combinely

summary(ebola_data)

visdat::vis_dat(ebola_data)
