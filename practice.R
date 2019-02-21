.s<-4
.s_ss.s<-5
typeof(.s)
letters
name<-readline(prompt = "Enter your name")
name
print(paste("Hi",name))
#a=[1,2,3,4,]
ifelse(a%%2==0,"even","odd")
mtcars
a<-mtcars[order(mtcars$mpg),]
a
a<-mtcars[order(-mtcars$mpg),]
a
b<-mtcars[which(mtcars$mpg>20),]
b
newdata<- subset(a, mpg >= 20 | mpg < 10, 
                  select=c(wt, gear))
newdata
a<-mtcars
attach(a)
c<-subset(a,cyl>3,select=mpg:carb)
c

z=read.csv(file.choose(),sep=',')
z1=write.csv(file.choose(),"1,2,3")

library(ggplot2)
ggplot(data = cars, aes(x = speed, y = dist)) + 
geom_density_2d(aes(colour = ..level..), bins = 15)


counts <- table(mtcars$rownames)
counts
counts <- table(rownames(mtcars))
counts
mtcars
library(MASS)
painters$
barplot(counts, main="Car Distribution", 
        xlab="Number of Gears")

s=merge(data1,data2,by="ID")
tranpose=t(dataframe)
 
