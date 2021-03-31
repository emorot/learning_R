x <- c(1:100)
x
length(x)
x[1]
x[0]
x[100]
x[-19]  #不输出第19个元素
x[c(4:18)]
x <- c(2,3,4,5)
x[c(-2,-3)]
y <- c(1:10)

#逻辑值
y
y[c(T)]
y[c(T,F,T,T,F,T,F,F,T,F)]
y[c(F)]
y[c(T,F)]
y[y>5]
y[y>5&y<9]

#字符串向量
z <- c("one","two","three")
z
z[1]
z[2]
z[3]
z[1:3]
"one" %in% z
z["one" %in% z]
z %in% c("one","three")
k <- z %in% c("one","three")
z[k]

#names给向量添加属性
y <- c(1:3)
names(y) <- c("one","two","three")
y
y["one"]
euro
euro["ATS"]

#向量中添加元素
x <- c(1:100)
x[101] <- "这是我新添加的元素"
x
v <- 1:3
v
x[102:104] <- v
x
x[c(105:106)] <- c(4,5)
x
x <- c(1:100)
x[c(101:104)] <- c(6,7,8,9)
x
append(x,values = 99,after = 3)  #在第三个元素之后插入99
append(x,values = 99,after = 0)  #在向量的头部插入数据

#元素的删除
x <- c(1:100)
x[-c(1:3)]  #负数索引
x <- x[-c(1:3)]
x

#元素的修改
x[2] <- '这是我修改的内容'
x

