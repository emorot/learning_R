#在R中NA代表缺失值（not available）不可用，注意，没有不代表就是0
x <- c(1:9)
x
x[11] <- 11
x
1+NA
NA==0  #不存在真假，所以返回值还是NA
a <- c(NA,c(1:49))
a
sum(a)
mean(a)
sum(a,na.rm = TRUE)
mean(a,na.rm = TRUE)   #将NA值移除
mean(1:49)
is.na(a)  #判断是否有缺失值
library(VIM)
sleep
is.na(sleep)
colSums(sleep)
rowSums(sleep)

#将NA值移除的第二种方法，na.omit()函数
a <- c(1:9)
a
a[11] <- 11
a
a <- na.omit(a)
a
mean(a)
sum(a)

# na.omit()对于数据框的应用
na.omit(sleep)  #将含有确实值的行删除
rownames(sleep)
length(rownames(na.omit(sleep)))

#其他缺失数据
#缺失数据NaN,代表是不存在的值
#lnf代表无穷（分为正无穷和负无穷）
1/0
-1/0
0/0
0/10
is.nan(0/0)   #识别不存在值
is.infinite(1/0)  #识别是不是无穷的值

