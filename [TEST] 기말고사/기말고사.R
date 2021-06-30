data=read.csv("DATA_FINAL.csv")
library(dplyr)

#기말 1번
dataA=filter(data, GROUP=="A")
dataB=filter(data, GROUP=="B")

PRMA=mean(dataA$PRE_TEST); PRSA=sd(dataA$PRE_TEST)
POMA=mean(dataA$POST_TEST); POSA=sd(dataA$POST_TEST)

PRMB=mean(dataB$PRE_TEST); PRSB=sd(dataB$PRE_TEST)
POMB=mean(dataB$POST_TEST); POSB=sd(dataB$POST_TEST)

rA=t.test(dataA$PRE_TEST, dataA$POST_TEST, paired=T)
rB=t.test(dataB$PRE_TEST, dataB$POST_TEST, paired=T)

PRE_MEAN=round(c(PRMA, PRMB),2)
PRE_SD=round(c(PRSA, PRSB),2)
POST_MEAN=round(c(POMA, POMB),2)
POST_SD=round(c(POSA, POSB),2)
t_paired=round(c(rA$statistic, rB$statistic),3)

TABLE1=data.frame(PRE_MEAN, PRE_SD, POST_MEAN, POST_SD, t_paired)
rownames(TABLE1)=c("A", "B")
TABLE1


#기말 2번
TOTAL=round(summary(diff(c(data$POST_TEST, data$PRE_TEST))),2)
A=round(summary(diff(c(dataA$POST_TEST, dataB$PRE_TEST))),2)
B=round(summary(diff(c(dataB$POST_TEST, dataB$PRE_TEST))),2)

s1=diff(c(data$POST_TEST, data$PRE_TEST))
s2=diff(c(dataA$POST_TEST, dataB$PRE_TEST))
s3=diff(c(dataB$POST_TEST, dataB$PRE_TEST))
SD=round(c(sd(s1),sd(s2), sd(s3)),2)

TABLE2=data.frame(rbind(TOTAL, A, B))
TABLE2=data.frame(TABLE2, SD)
colnames(TABLE2)=c("MIN", "Q1", "Q2", "MEAN", "Q3", "MAX", "SD")
TABLE2
