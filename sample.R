install.packages("ggplot2")
library(datasets)
data(mtcars)
head(mtcars, 5)

library(ggplot2)

#plot a scatterplot, ggtitle func is to add title, labs func is to add label to the axis
ggplot(aes(x=disp, y=mpg), data=mtcars)+geom_point()+
  ggtitle("Displacement vs miles per gallon")+
  labs(x="Displacement", y="Miles per Gallon")

mtcars$vs <- as.factor(mtcars$vs)

#Plot the boxplot without colors
ggplot(mtcars, aes(x=vs, y=mpg))+geom_boxplot()

#plot a boxplot. The dataset can be before the x and y axis or after within the brackets
ggplot(mtcars, aes(x=vs, y=mpg, fill=vs)) + 
  geom_boxplot(alpha=0.3) + theme(legend.position = "none")

#Plot a histogram for a single column weight
ggplot(aes(x = wt), data = mtcars) + geom_histogram(binwidth = 0.5)

#load the iris data set. 
data(iris)

#view the iris dataset on another tab
View(iris)

#Using the GGally package to extend the ggplot package
install.packages("GGally")

library(GGally)
ggpairs(iris, mapping=ggplot2::aes(colour = Species))