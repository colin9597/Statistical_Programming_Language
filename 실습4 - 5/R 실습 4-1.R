library(dplyr)

data=read.table("DATA_ORI.txt", header=T)

data_season=data[(data$SEASON==3|data$SEASON==4|data$SEASON==5),]
data_season2=filter(data, SEASON==3|SEASON==4|SEASON==5)

data_GL=data_season[, c("GROUP", "LIPID")]
data_GL2=select(data_season2, GROUP, LIPID)

mean(data_GL$LIPID[data_GL$GROUP=="M-1"])
mean(data_GL$LIPID[data_GL$GROUP=="M-2"])
mean(data_GL$LIPID[data_GL$GROUP=="M-3"])
mean(data_GL$LIPID[data_GL$GROUP=="M-4"])

sd(data_GL$LIPID[data_GL$GROUP=="M-1"])
sd(data_GL$LIPID[data_GL$GROUP=="M-2"])
sd(data_GL$LIPID[data_GL$GROUP=="M-3"])
sd(data_GL$LIPID[data_GL$GROUP=="M-4"])

data_gr=group_by(data_GL2, GROUP)
summarise(data_gr, mean(LIPID), sd(LIPID))
