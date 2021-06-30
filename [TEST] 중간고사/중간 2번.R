data=read.table("DATA_ORI.txt", header=T)
data=subset(data, !is.na(data$PROTEIN))

library(dplyr)
case=filter(data, MOISTURE>=70&LIPID<10)

table(case$GROUP)

tapply(case$PROTEIN, case[,c("SEASON", "GROUP")], mean)