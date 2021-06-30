data=read.table("DATA_ORI.txt", header=T)
tapply(data$MOISTURE,data$GROUP, summary)