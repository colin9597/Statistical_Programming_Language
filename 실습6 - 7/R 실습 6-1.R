data=read.table("DATA_ORI.txt", header=T)

data.list=list(data=data)

data.list$Group_name=levels(data$GROUP)

data.list$M_sum=summary(data$MOISTURE)
data.list$P_sum=summary(data$PROTEIN)
data.list$L_sum=summary(data$LIPID)

data.list$RATIO=data$MOISTURE/data$PROTEIN

names(data.list)