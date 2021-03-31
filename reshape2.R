getwd()
help(package="reshape2")
library(reshape2)  #和excel的数据透视表类似
#创建两个数据框
x <- data.frame(k1=c(NA,NA,1,2,3),k2=c(NA,3,2,1,NA),K3=1:5)
y <- data.frame(k1=c(NA,NA,4,5,6),k2=c(NA,7,8,9,NA),K3=5:9)
x
y
#重组数据
#使用melt函数将宽数据转换为长数据
?melt
#使用内置的airquality数据集
airquality
View(airquality) #纽约1973年5月到9月每天的空气质量情况
head(airquality)
names(airquality)
names(airquality) <- tolower(names(airquality))
head(airquality)
#融合数据
melt(airquality)
aql <- melt(airquality)
aql
aql <- melt(airquality,id.vars = c("month","day"))
head(aql)
aqw <- dcast(aql,month~variable)
aqw

