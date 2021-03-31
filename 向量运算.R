x <- 1:10
x
x+1   #每个元素都加1
x-3  #每个元素都减3
x <- x+1
x
y <- seq(1,100,length.out = 10)
y
x+y
x*y
x**y
x
y
y%%x  #取余数
y%/%x #取整

#如果x向量和y向量的个数不同
x <- c(1:10)
x
z <- c(1,2)
x+z
x*z
z <- c(1:3)
z
x+z #长度不匹配
x
x>5   #逻辑判断
y
x>y
y>x
c(1,2,3,4) %in% c(1,2,2,3,6,7,8,9)   #逻辑判断符
x==y   #注意是两个等号，一个等号的意思是赋值操作
x
y

#一些常用的函数
a <- -5:5
a
abs(a)   #返回绝对值
sqrt(25)  #取根号
log(16,base = 2)  #16为被求得值，2为底数
ceiling(c(-2.1,3.14))  #返回不小于这个数得整数、
floor(c(2.1,-3.1444))   #返回不大于这个数的最大整数
trunc(3.14)   #返回整数部分
round(3.1415926,digits = 3)   #保留三位有效数字
sin(x)
cos(x)

#统计函数（对数据整体进行处理，返回一个值）
vec <- 1:100
vec
sum(vec)
max(vec)
min(vec)
range(vec)  #返回最大值和最小值
mean(vec)  #均值
var(vec)  #向量的方差
sd(vec)  #返回标准差
prod(vec)  #连乘
median(vec) #中位数
quantile(vec)  #分位数
quantile(vec,c(0.4,0.5))
t <- c(1,2,5,4,7,8,4)
which.max(t)  #返回最大值的索引值
which(t==7)
which(t<5)  #取索引
val <- c(1,2,3,4,5,6,7)
val
val[val>2]   #取值
val>2
###########可以看出来R语言的优势，直观

