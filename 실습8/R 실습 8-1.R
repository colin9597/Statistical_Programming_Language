data=read.table("DATA_ORI.txt", header=T, na.strings = 9999)
SM1=mean(data$MOISTURE[data$SEASON==3|data$SEASON==4|data$SEASON==5], na.rm=T)
SM2=mean(data$MOISTURE[data$SEASON==6|data$SEASON==7], na.rm=T)

Mn_3=mean(data$MOISTURE[data$SEASON==3], na.rm=T)
Mn_4=mean(data$MOISTURE[data$SEASON==4], na.rm=T)

Sd_3=sd(data$MOISTURE[data$SEASON==3], na.rm=T)
Sd_4=sd(data$MOISTURE[data$SEASON==4], na.rm=T)

Pop=rnorm(1000000, Mn_3, Sd_3)
mu=mean(data$MOISTURE[data$SEASON==3], na.rm=T)
n=100;m=100
alp=0.05
chk=0
for(i in 1:m)
{
  #Sample=Pop[sample(1:length(Pop), n, replace=F)]
  xb=mean(Sample)
  S=sd(Sample)
  L=Mn_3-qnorm(1-(alp/2), 0, 1)*Sd_3
  U=Mn_3+qnorm(1-(alp/2), 0, 1)*Sd_3
  chk=chk+(L<mu & mu<U)
}
chk/m
L ; U


L=Mn_4-qnorm(1-(alp/2), 0, 1)*Sd_4
U=Mn_4+qnorm(1-(alp/2), 0, 1)*Sd_4

L;U
