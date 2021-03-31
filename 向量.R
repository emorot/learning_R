向量：构成其他数据结构的基础，类似集合，由一个或多个元素组成
其他的理解：用于存储数据的一维数组
用函数c来创建
euro
rivers
state.abb
state.area  #以上均是向量的数据结构
x <- c(1,2,3,4,5,6)
x
print(x)
y <- c("one","two","three")  #字符串必须加引号，单引号或者双引号都可以
y
z <- c(TRUE,FALSE)
z
w <- c(T,F,T,T)
w
c(1:100)  #输出1-100的等差数列
c(T,F,T,T)
seq(1,100,by = 3)  #设置等差差值
seq(from=1,to=100,by=4)
seq(1,100,length.out = 10)  #输出10个
?rep
rep(2,5)  #重复5次2
x <- c(1,2,3,4,5)
rep(x,5)  #重复指定的向量5次
rep(x,each=5)   #每一个元素出现5次
rep(x,each=5,times=2)  #总的出现两次
#向量的特点：同一字符串必须是同一类型
a <- c(1,2,"one")
a
mode(a)  #查看向量的类型
mode(z)  

#单个赋值
a=2
b=3
c='hello'
d=TRUE
a;b;c;d

#向量化编程
x <- c(1,2,3,4,5)
y <- c(6,7,8,9,10)
x*2+y
x[x>3]   #直接取出x向量中的符合条件的值
rep(x,c(2,4,6,1,3))  #指定向量中的每个值出现的次数

















































