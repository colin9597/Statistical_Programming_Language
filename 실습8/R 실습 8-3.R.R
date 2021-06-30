Data=read.csv("DATA_001.csv", header=T)
library(dplyr)

#2-1
A=filter(Data, GROUP=="A")
B=filter(Data, GROUP=="B")
t.test(A$POINT, B$POINT)

del0=0
AM=mean(A$POINT)
BM=mean(B$POINT)
AS=sd(A$POINT)
BS=sd(B$POINT)

sp=(99*(sd(A$POINT)^2)+99*(sd(B$POINT)^2))/198
tt=(AM-BM-del0)/(sqrt(sp)*sqrt(1/100+1/100))

pp=(1-pt(abs(t), 198, lower.tail= TRUE))*2


MEAN=round(c(AM, BM),2)
SD=round(c(AS, BS),2)
t=round(c(tt, NA),3)
p=round(c(pp, NA),3)

RESULT1=data.frame(MEAN, SD, t, p)
rownames(RESULT1)=c("A", "B")
