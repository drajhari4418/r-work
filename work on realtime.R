#PACKAGES REQUIRED-----
if(!require(pacman))install.packages("pacman")
pacman::p_load(tidyverse, inspectdf,plotly, janitor, visdat, esquisse)
#load data----
ebola_data <- read.csv("https://tinyurl.com/ebola-data-sample")
head(ebola_data)
tail(ebola_data) #note:- print last six lines to console from data

ncol(ebola_data)

nrow(ebola_data)

dim(ebola_data) #gives col. and rows no combinely

summary(ebola_data)

#load packages====
library(inspectdf)
library(visdat)
library(plotly)
library(esquisse)

#geographical data overview=====
vis_dat(ebola_data)
cat_summary <- inspect_cat(ebola_data)
cat_summary_plot <- ggplot(cat_summary , aes(x=col_name, y=cnt)) +
  geom_col()
ggplotly(cat_summary_plot)

#numerical overview----
num_summary_plot <- ggplot(num_summary, 
                           aes(x = col_name, y = mean)) +
  geom_col()

ggplotly(num_summary_plot)
#analyzing single variable=====
ebola_data$age
mean(ebola_data$age, na.rm = T)
median(ebola_data$age, na.rm = T)
hist(ebola_data$age)

#esquisse + ggplot====
esquisser(ebola_data)


library(ggplot2)
# :====
#means it closed the broken device.
#If it errors, run it again until it says null device.

dev.off()
ggplot(ebola_data) +
 aes(x = id) +
 geom_histogram(bins = 30L, fill = "#112446") +
 theme_void()
library(ggplot2)

ggplot(ebola_data) +
 aes(x = sex) +
 geom_bar(fill = "#112446") +
 theme_minimal()

ggplot(ebola_data) +
 aes(x = sex, y = district) +
 geom_tile() +
 geom_boxplot(aes(x = id), fill = "#122446") +
 theme_minimal()

