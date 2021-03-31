iris
iris3   #3中鸢尾花数据集
state.x77 #美国50个州得8个指标
heatmap(state.x77)  #矩阵在向量的基础上增加维数

#创建矩阵
x <- 1:20
x <- c(1:20)
x
m <- matrix(x,4,5)  #4行5列的矩阵，矩阵的创建一定要符合条件
m
m <- matrix(x,5)  #自动进行分配
m
m <- matrix(x,4,byrow = F)  #按照行来排序，默认是按照列来排序的
m

#给矩阵的行和列添加上名字
rnames <- c("R1","R2","R3","R4")
rnames
cnames <- c("C1","C2","C3","C4","C5")
cnames
dimnames(m) <- list(rnames,cnames)   #注意这里是列表的操作
m

#dim函数简介
?dim
dim(x)
dim(x) <- c(4,5)
x
dim(x) <- c(2,2,5)  #三维的结构
x

#数组的创建,和矩阵极为类似
?array
x <- array(1:24,c(3,8))
x

#访问矩阵（数组）数据
m <- matrix(1:20,4,5,byrow = T)
m
m[1,2]
m[1,c(2,3,4)]  #一次性访问多个元素
m[c(1,2),c(1,2)]  #输出矩阵的一个子集
m[2,]  #访问第二行
m[,1]   #访问第一列
m
m[-1,2]  #第二列中去除第一行的数据，记住，R语言中的负号代表的是不包含
dimnames(m) <- list(rnames,cnames)
m
m["R1","C5"]  #访问数据，注意：名称是字符串，需要添引号

#案例
state.x77
head(state.x77,2)  #head和linux的用法极为类似
state.x77[,"Income"]  #访问收入额这个数据
state.x77["Alabama",]

#矩阵的运算
m
m+1  #矩阵中每个元素都加1
m*2 #矩阵的每个元素都乘以2
m+m   #矩阵的对应位置进行相加

n <- matrix(1:20,5,4)
n
m
m+n
#所以矩阵的运算需要行和列一致
m
t <- m["R4",]
sum(t)  #计算加和
colSums(m)   #计算矩阵每一列的和
rowSums(m)
colMeans(m)  #计算平均值
rowMeans(m)  #计算平均值

#矩阵的乘法
n <- matrix(1:9,3,3)
q <- matrix(2:10,3,3)
n*q
diag(n)  #对角线
diag(q)
n
t(n)  #转置矩阵
m
t(m)
m <- matrix(1:16,c(4,4))
m
hangnames <- c("第一行","第二行","第三行","第四行")
hangnames
lienames <- c("第一列","第二列","第三列","第四列")
lienames
dimnames(m) <- list(hangnames,lienames)
m
t(m)
#小记：转置函数不仅换了行和列，而且更换了排序规则
