aw=read.csv(file.choose(),sep=',',stringsAsFactors = F)
n=0
u=0
for (i in 1:nrow(aw)){
  if(aw$YEAR>1947 & (aw$party=="nda") ){
    n=n+(aw[4,i]+aw[5,i])
  }
  if(aw$YEAR>1947 & aw$party=="upa"){
    u=u+(aw[4,i]+aw[5,i])
  }
}
print(c(n,u))
aw$party

library(dplyr)

obtain the body temp of 2 patient
display flu status of all patience.



d1=sum(subset(aw,aw$YEAR>1947 & aw$party=='nda',select = PADMA.VIBHUSHAN))
temp=c(38.7,40.1,41.7,48.0,54.0,43.0,48.7)
year=c(2011,2012,2013,2014,2015,2016,2017)
sells=c(40000,45000,54000,62000,53000,52000,65000)
d=data.frame(year,temp,sells)
year         temp                    sells
2011         38.7                    40000
2012         40.1                    45000
2013         41.7                    54000
2014         48.0                    62000
2015         54.0                    53000
2016         43.0                    52000
2017         48.7                    65000

lm(formula=sells~temp,data=d)
Call:
  lm(formula = sells ~ temp, data = d)

Coefficients:
  (Intercept)         temp  
    5894             1049 

5894+(1049*52.2)
sells= 60651.8

barplot(d$temp+d$sells,d$year,names.arg = c("2011","2012","2013","2014","2015","2016","2017"),col="skyblue")

