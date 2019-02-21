car=c(1,3,6,4,9)
plot(car)

plot(car,type='o',col="red")
title(main = "Cars",col.main="blue",font.main=8,cex.main=3) #cex.main give font size

truck=c(2,5,4,5,12,15)
lines(truck,pch=22,lty=2,type = "o",col="blue") #line will work on previous graph only

#plot(car,type='o',col="red",ylim=c(1,14))
plot(car,type='o',col="red",ylim=y_range,axes=FALSE,ann=FALSE)
truck=c(2,5,4,5,12,15)
lines(truck,pch=22,lty=2,type = "o",col="blue") #line will work on previous graph only

y_range=range(0,car,truck)

axis(1,at=c(1:5),lab=c("Mon","Tue","Wed","Thu","Fri"))# 1 means x-axis 2 means y-axis
 axis(2,las=1,at=4*0:y_range[2])
 
 box()
 title(main="Cars",col.main="red",font.main=8,cex.main=3)
title(xlab="Days",col.lab="green") 
title(ylab="Total",col.lab=rgb(0,0.5,0))
