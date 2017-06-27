library(rpart)
library(rpart.plot)
DataAct<-read.csv(file.choose(),header=T,sep=',')
str(DataAct)
CCAM_tree<-rpart(CODE_CCAM~., DataAct,method="class")
print(CCAM_tree)
plot(CCAM_tree,uniform=TRUE,main="Classification Tree with rpart")

