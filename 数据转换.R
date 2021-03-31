#数据框和其他类型转换
library(openxlsx)
getwd()
?read.xlsx
dir()
cars <- read.xlsx("mtcars.xlsx",sheet = 1)
cars
is.data.frame(cars)  #判断是否是数据框
state.x77   #矩阵
is.data.frame(state.x77)
#强制转换
data <- as.data.frame(state.x77)
is.data.frame(data)
#数据框转换为矩阵
as.matrix()
#查看is,as等函数的用法
methods(is)
methods(as)
#维度转换
x <- state.abb
x
dim(x) <- c(5,10)
x
#转换为因子类型
x <- state.abb
x
as.factor(x)
x
as.list(x)  #变成列表


#数据的子集
who <- read.csv("WHO.csv",header = TRUE)
View(who)
#取数据的子集
who1 <- who[c(1:50),c(1:10)]  #连续提取
View(who1)
who2 <- who[c(1,3,10),c(2,6)]  #非连续提取
View(who2)
#使用逻辑值进行取子集数据
who$Continent
who3 <- who[which(who$Continent==1),]  #逗号的作用是取行
View(who3)
#使用条件取子集数据
who4 <- who[which(who$CountryID>50 & who$CountryID<=100),]
View(who4)


#subset函数取子集
who5 <- subset(who,who$CountryID>50 & who$CountryID<=100)
View(who5)

#sample函数进行随机抽样
x <- c(1:100)
x
sample(x,60)  #默认无重复值
sample(x,60,replace = TRUE)
x <- sort(sample(x,60,replace = TRUE))
unique(x)  #去重


#删除固定行
#删除第一行
mtcars[-1:-5,]  #再重新赋值就可以
#删除列
mtcars[,-1:-5]


#转置数据
?t
x <- t(mtcars)
View(x)

#转置函数rev
?rev
x <- c(1:10)
rev(x)
women
a <- rownames(women)
women[rev(a),]

#转换数据框中的值
women
?transform
transform(women,height=height*2.54)

#计算数据框的加和
WorldPhones #全球通话平均数
worldPhones <- as.data.frame(WorldPhones)
worldPhones
typeof(worldPhones)
typeof(WorldPhones)
r_sums <- rowSums(worldPhones)
r_sums
c_sums <- colSums(worldPhones)
c_sums
mean(c_sums)  #取平均值
c_mean <- colMeans(worldPhones)
c_mean

#使用rbind函数合并数据
total <- cbind(worldPhones,sum=r_sums)   #添加列
rbind(total,year_mean=c_mean)  #添加行

#中心化和标准化数据（为了使数据更加明显的突出重点）
#中心化简单概括
x <- c(1,2,3,6,3)
x
mean(x)
x-mean(x)
#计算标准差
sd(x)
#标准化
(x-mean(x))/sd(x)


#scale函数中心化和标准化的处理
heatmap(state.x77)  #图像不好看
x <- scale(state.x77,center = TRUE,scale = T)  #中心化和标准化处理
x
head(x)
head(state.x77)
heatmap(x)

































