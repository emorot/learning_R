#简单来说就是变量之间是否有关系
#相关性可以是正相关也可以是负相关，具体看相关系数

#cor函数检验
?cor
state.x77
cor(state.x77)  #二维数据直接展示相关系数

#只计算想计算的两组的相关性
names(state.x77)
colnames(state.x77)
x <- state.x77[,c(1,2,3,6)]
y <- state.x77[,c(4,5)]
cor(x,y)

