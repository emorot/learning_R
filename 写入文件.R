?write
x <- rivers
x
getwd()
write.table(x,file = "x.txt")
read.table("x.txt")
dir()
x <- read.table("x.txt")
head(x)
write.table(x,file = "转换文件1.csv",sep=",",row.names = FALSE,quote = FALSE) #不添加行号,不为字符串添加双引号
x <- read.table("转换文件1.csv",header = TRUE,sep = ",")
View(x)
x <- read.table("input.txt")
x
write.table(x,file = "转换文件2.csv",sep=",")

#追加文件
append()   #追加数据到文件中，而不是覆盖
write.table(iris,file = "转换文件1.csv",sep=",",row.names = FALSE,quote = FALSE,append = TRUE) #不添加行号,不为字符串添加双引号
x <- read.table("转换文件1.csv",header = TRUE,sep = ",")
View(x)

#写成压缩文件
write.table(mtcars,gzfile("newfile.txt.gz"))
dir()


#写成其他格式的文件
help(package="foreign")
