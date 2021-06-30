fn=list.files("SEASON_3", full.names=T)
DATA_A=data.frame()
for (i in 1:length(fn))
{
  data_i=read.csv(fn[i],na.string=9999)
  DATA_A=rbind(DATA_A, data_i)
}
dim(DATA_A)

write.csv(DATA_A, "DATA_A.csv", na="-999", row.names=F)
