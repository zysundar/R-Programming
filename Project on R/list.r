m1<-matrix(1:9,nrow = 3)
#m2<-matrix(10:19,ncol=3)
v1=c(22,33,44,5,55)
v2=c("SUndaram","Bhaskar","prashant","vishal","Rajendra")
v3=c(TRUE,FALSE,FALSE,FALSE,TRUE)
v4=data.frame(Name=c("sun","BHA","pra","vis","raj"),reg=c(113,114,123,142,153),dep=c("IT","CAp","MEC","ECE","EE"))
v5=list(c(10:14),v1)
v6=26.8
l1=list(v2,v3,v4,v5,v6)
l1
names(l1)=c('Numerical value',"Boolean value","Dataframe","list","decimal value")
l1

l2=list(c(1:10))
l3=list(letters[1:10])
#l5<-list(l2,l3)
#l4<-c(l2,l3)
unlist(l2)
unlist(v4)

f=read.csv(file.choose(),sep = ",")
summary(f)

f[order(Name & Age),]



