
for (i in 1:3)
{
  a<-(readline(prompt="Enter the number"))
}
t=read.csv(file.choose(),sep=",")
summary(t)
f=nrow(t[which(t$Sex="female" & t$Survived=0),])
p<-nrow(t[which(t$Sex="male" & t$Survived=0),])
d=nrow(t[which(t$Survived=0),])
p1=(p/d)*100
p2=(f/d)*100
if(p1>p2){
  print(paste("male with",p1))
}else{
  print(paste("female with",p2))
}