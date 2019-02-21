a=read.csv(file.choose(),sep=",")
summary(a)
str(a)
#to use some function like tbl_df
library(dplyr)
#tbl_df will show data with their data type in tabular formate so its very easy to go through your data
a=tbl_df(a)
a
#type conversion fct into data
a$Start.Date=as.Date(as.character(a$Start.Date),  format = "%m/%d/%Y")
a$End.Date=as.Date(as.character(a$End.Date),  format = "%m/%d/%Y")
# to check frequency
table(a$Affiliation)
#what people thinking about affiliation of the party
plot(a$Affiliation,col=c("green3","mediumorchid1","gold","red2"),names.arg = c("Dem","None","Other","ReP"),legend=rownames(a$Affiliation),main="Party Affiliation",ylab="Count")
#legend for party affiliation
legend("topright",legend=c("Dem","None","Other","Rep"),col=c("green3","mediumorchid1","gold","red2"),pch=19,bty="n")
#population based affilition
plot(a$Population,las=2,col=c("red2","orangered","darkorange1","darkolivegreen1","chartreuse3","mediumspringgreen","deepskyblue","seagreen1","turquoise1"),names.arg=c("Adults","Likely","Dem","Ind","Rep","Resi","Resi_Dem","Res_ind","Res_Rep"),ylim=c(0,300))
#legend for affiliation
legend("topright",legend=c("Adults","Likely","Dem","Ind","Rep","Resi","Resi_Dem","Res_ind","Res_Rep"),col=c("red2","orangered","darkorange1","darkolivegreen1","chartreuse3","mediumspringgreen","deepskyblue","seagreen1","turquoise1"),pch=19,bty="n")
#average of clinton
avgc=mean(a$Clinton)
#average of Trump
avgt=mean(a$Trump)
#average of Undecided
avgu=mean(a$Undecided)

#data frame of averages
  #    Trump   Clinton   Undecided
  # 1  40.643    42.733   9.315 

# make matrix for plot
a2=matrix(c(avgt,avgc,avgu),nrow=1,ncol = 3)

#plot this new average variable
barplot(a2,names.arg = c("Trump","Clinton","Undecided"),col="skyblue3",ylim=c(0,50))


#plot undecided voter
plot(Clinton+Trump+Undecided~End.Date,data=a,pch=1,col=c('red','green','yellow'),las=2)


#plot user sentiment get change--
d=data.frame(a$Clinton-a$Trump)
plot(d,a$Start.Date[0:1000],col="pink2")
legend("topright",legend=c(a$Start.Date),col="pink",pch=1)



