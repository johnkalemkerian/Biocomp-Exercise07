####EXERCISE 7

setwd("/Users/johnkalemkerian/Desktop/r-novice-inflammation/data/Biocomp-Exercise07/")

####Question 1
##Write R code that replicates "head" function

#Insert intended file name
fileName <- "iris.csv"

#Insert intended number of lines
lines <- 10

file <- read.csv(file=fileName, header=TRUE, sep=",")

file[1:lines,]


####Question 2

iris <- read.csv(file ="iris.csv", header=TRUE, sep=",")

##Print the last 2 rows in the last 2 columns
tail(iris,2)[,4:5]

##Get the number of observations for each species included in the dataset
uniqSpecies <- unique(iris$Species)
results<-data.frame()

for (i in 1:length(uniqSpecies)){
  results[i,1]<-uniqSpecies[i]
  results[i,2]<-sum(iris$Species==uniqSpecies[i])
}
results

##Get rows with Sepal.Width > 3.5
sepal_width <- iris[iris$Sepal.Width > 3.5,]
print(sepal_width)

##Write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa <- iris[iris$Species =="setosa",]
write.table(setosa,file="setosa.csv", row.names = FALSE, col.names = TRUE, sep=",")

##Calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
meanPetal <- mean(iris[iris$Species=="virginica",3])
minPetal <- min(iris[iris$Species=="virginica",3])
maxPetal <- max(iris[iris$Species=="virginica",3])













