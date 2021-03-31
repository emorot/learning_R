#简单介绍一些处理字符串的函数，注意：R中字符串出现的地方一定要加引号
nchar("hello  world")   #空格也代表一个字符串
month.name
nchar(month.name)
length(month.name)   #返回的是向量中元素的个数
length("hello   world")   #返回1
nchar(c(1,11,111))  #返回123
c <- paste("每个人","都喜欢","和平",sep="-")  #连接字符串
c
names <- c("小王","小刘","小张")
paste(names,"喜欢生物统计学",sep="")   #匹配的分配
substr("提取字符串",start=1,stop=3)
temp <- substr(month.name,start = 1,stop = 3)
temp
toupper(temp)  #将字符串转换为大写
tolower(temp)  #小写
?sub
#使用正则表达式使得首字母大写
# gsub()函数

#grep函数简介
x <- c("one","two","three")
x
grep("three",x,fixed = TRUE)
match("one",x)   #不具备正则表达式，但是也可以进行查找

#strsplit函数
path <- "/usr/bin/perl"
strsplit(path,"/")

#笛卡尔集简介
?outer
x <- 1:3
y <- 4:7
x%o%y

#生成一副扑克牌
x <- c("A","2","3","4","5","6","7","8","9","10","J","Q","K")
y <- c("黑桃","红桃","梅花","方块")
x
y
outer(x,y,FUN = paste)
outer(y,x,FUN = paste)
outer(y,x,FUN = paste,sep="-")

#R神-----hadley wickham
