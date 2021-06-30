data=read.table("DATA_ORI.txt", header=T)

AAD=function(x)
{
  x=na.omit(x)
  result=mean(abs(x-mean(x)))
  return(result)
}

tapply(data[, c("MOISTURE")], data[,c("GROUP")], AAD)
sapply(data[,3:5], AAD)
lapply(data[,3:5], AAD)