获取数据的三种方法
键盘输入
数据库
外部设备

键盘输入数据（病人表格为例）：
patient <- c(1,2,3,4)
admdate <- c("2019","2018","2016","2017")
age <- c(20,21,22,23)
diabets <- c("type1","type2","type3","type4")  #糖尿病类型
status <- c("poor","poor","good","good")  #病人状态
data <- data.frame(patient,admdate,age,diabets,status)  #生成数据框
data

#数据编辑器
?edit
data2 <- data.frame(patient=character(),admdate=character(),age=character(),diabets=character(),status=character())  #生成数据框
data2 <- edit(data2)
data2
fix(data2)  #同样也可以调出数据编辑器

#从数据库中读取文件
install.packages("RODBC")
library(RODBC)
?RODBC
help(package="RODBC")
