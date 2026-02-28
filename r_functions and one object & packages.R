cars
table(cars$dist)
first_name <-"dushyant"
last_name <-"kaushik"
paste(first_name , last_name)
my_number <- 48
paste(my_number, 2)
my_number + 2
ebola_data <- read.csv("https://tinyurl.com/ebola-data-sample")
ebola_data
table(ebola_data$sex)
ebola_data



#view(women)"V has to be in capital letter"
View(women)
rm
plot(cars)
install.packages("highcharter")
library(highchater)
library(highcharter)
highcharter::hchart(women$height)
highcharter::hchart(cars$speed)
clearPushBack()


#FUNCTIONS----

sqrt(100)
paste("iam number", 2+3)
plot(ebola_data)


# SELF OWN CREATED FUNCTIONS----
head(x=ebola_data, n = 3 )
head(women,3)
plot(head(women))


# FUNCTION NESTING ----
tolower("DUSHYANT")
paste("My name is",tolower("DUSHYANT"))

lowercase_name = tolower("DUSHYANT")
lowercase_name
paste("My name is",lowercase_name)
    #women


# PACKAGES----

#install.packages("tableone")

#library(tableone)

#CreateTableOne(data = cars)

############################################
#instead of using library line(line no.44), we can just directly call package like below illustrated:

tableone::CreateTableOne(data = ebola_data)






##### Package Manager(PACMAN)----

pacman::p_load(outbreaks,tableone)


