marks=c(89,87,89,45,67,67,67)
name=c(LETTERS[1:6],'F')
edu=c('cse','ece','mec','CE','IT','agr','agr')
d=data.frame(name,edu,marks)
d    #1
unique(d)    #2
nrow(unique(d))      #2
d1=unique(d)      #4
d1
d2[!duplicated(d1[c('marks')]),]    #4

d1[sample(nrow(d1), 2), ]     #5

colnames(d1)[2] <- "new_edu"  #6

d1$new_edu   #7
d1['new_edu']   #7

select(d, starts_with("e"))  #8

select(d,name)%>%filter(name == 'A') %>% filter(marks == 87)

filter(d,marks>80)
filter(d,marks==87 && name=='A')

top_n(d,10)

top
ir[nrow(ir)-1:nrow(ir),ncol(ir)-1:ncol(ir)]
subset(ir,ir$Sepal.Length>5)
subset(ir,ir$Species=="versicolor")




