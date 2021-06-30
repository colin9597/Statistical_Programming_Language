data=read.table("DATA_ORI.txt", header=T)
library(dplyr)
#1-1
data345=filter(data, SEASON <6)
data67=filter(data, SEASON>=6)
t.test(data345$MOISTURE, data67$MOISTURE)

#1-2
data3=filter(data, SEASON==3)
data4=filter(data, SEASON==4)
t.test(data3$MOISTURE)
t.test(data4$MOISTURE)

