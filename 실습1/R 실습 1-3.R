x=c(1,2,NA,4,5,6,7,8,NA,110)

mean(na.omit(x))

x[is.na(x)]=median(x,na.rm=T)
mean(x)

mean(subset(x,x<10))