data=read.csv("DATA_PRACTICE.csv", comment.char="%", header=F, na.strings=9999)

colnames(data)=c("SEASON", "PROTEIN")
head(data)

mean(data$PROTEIN[data$SEASON==3], na.rm=T)