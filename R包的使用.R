.libPaths()  #显示库所在的位置
library()  #显示库中有哪些软件包
library(包名)  #直接载入包，不用加引号
require(包名)   #和上一样
help(package="包名")  #包的帮助文档
library(help="包名")  #帮助文档，基础内容
library(ggplot2)
ls("package:ggplot2")  #内置函数
data(package="ggplot2")  #内置数据集
detach("package:ggplot2")  #从内存中移除
remove.packages("包名")   #从硬盘上彻底删除

#批量移植R包的方法
Rpack <- installed.packages()[,1]
save(Rpack,file = "Rpack.Rdata")
#另一台计算机
load("Rpack.Rdata")
for(i in Rpack) install.packages(i)

#另外一种方法
直接替换文件夹
