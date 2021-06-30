Data=read.csv("DATA_001.csv", header=T)
library(dplyr)
#2-1
A=filter(Data, GROUP=="A")
B=filter(Data, GROUP=="B")
r=t.test(A$POINT, B$POINT)
r$statistic
r$p.value

MEAN=tapply(Data$POINT, Data$GROUP, mean)
SD=tapply(Data$POINT, Data$GROUP, sd)
t=round(c(r$statistic, NA),3)
p=round(c(r$p.value, NA), 3)
data.frame(MEAN, SD, t, p)

#2-2
Data_1=filter(Data, TYPE==1)
r1=t.test(Data_1$POINT)
TAB_1=c(r1$estimate, r1$conf.int)

Data_2=filter(Data, TYPE==2)
r2=t.test(Data_2$POINT)
TAB_2=c(r2$estimate, r2$conf.int)

Data_3=filter(Data, TYPE==3)
r3=t.test(Data_3$POINT)
TAB_3=c(r3$estimate, r3$conf.int)

Data_4=filter(Data, TYPE==4)
r4=t.test(Data_4$POINT)
TAB_4=c(r4$estimate, r4$conf.int)

TABLE=data.frame(rbind(TAB_1, TAB_2, TAB_3, TAB_4))

colnames(TABLE)=c("Mean", "LOWER", "UPPER")
rownames(TABLE)=c("TYPE1", "TYPE2", "TYPE3", "TYPE4")
