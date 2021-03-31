#txt文件以空格作为分隔符,csv文件以,为分隔符
getwd()  #查看当前工作目录
list.files()  #查看当前工作目录下的文件
dir()  #和上一样
setwd("c:/Users/14988/Desktop/R语言学习")
dir()
?read.table
read.table("input.txt")
x <- read.table("input.txt")
x <- read.table("c:/Users/14988/Desktop/R语言学习/input.txt")
x
head(x,10)
head(x)
tail(x)
sep() #分割函数，默认分割符为空白
x <- read.table("input.csv")
x  #乱码
x <- read.csv("input.csv")
x
x <- read.table("input.csv",sep = ",")
x
x <- read.table("input.csv",sep = ",",header = TRUE) #第一行为表头
x
x <- read.table("input 1.txt",header = TRUE,skip = 5)  #跳过前五行
head(x)
x <- read.table("input 1.txt",header = TRUE,skip = 50,nrows = 100)  #截取文件的任意部分
x
read.csv()
read.delim("input.txt")  #默认用制表符分割
read.table("input.txt")
read.fwf()  #默认的宽度
 

#读取非文本文件
library(XML)
?readHTMLTable  #用来读取网页上的数据
readHTMLTable("http")

#导出文件数据
help(package="foreign")
RSiteSearch("Matlab")   #搜索matlab的帮助文档
#读取剪切板数据
先复制（或者剪切）
x <- read.table("clipboard",header = TRUE,sep = ",")
x
View(x)  #直观的查看数据
readClipboard()  #直接粘贴剪切版的数据
?readClipboard()

#读取压缩文件
dir()
list.files()
read.table(gzfile("input.txt.gz"))

#读取不规则文件的方法
?readLines()
readLines("input.csv",n=5)  #逐行读取
scan()  #处理复杂数据的函数








































