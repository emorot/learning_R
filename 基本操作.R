getwd() #显示当前所在目录
setwd(dir = "C:/Users/14988/Desktop/R语言学习/")  #设定工作目录，注意这里是正斜线
list.files()  #查看目录下面的所有文件
dir() #查看目录下面的所有文件
1+2
x <- 3
x
y <- sum(1,2,3,4,5)
z <- mean(1,2,3,4,5) #平均值
z
ls() #列出变量
ls.str()  #列出变量的详细内容
str(x)
str(y)
str(z)
ls(all.names = TRUE)  #显示隐藏变量
rm(x) #删除变量
rm(y,z) #批量删除
rm(list = ls()) #删除所有的变量
history()  #列出历史记录
history(25)  #最近的25条记录
ctrl+l #清空屏幕
save.image() #保留数据和绘图函数
q() #退出

