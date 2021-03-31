#R语言进阶-----R编程
#建议----函数名称最好和函数功能相关
myfun <- function(选项参数){
  函数体
}



#计算偏度和峰度的函数
#偏度---是统计数据非对称程度的数字特征
#峰度---表征概率密度分布曲线在平均值处峰值高低的特征数
mystats <- function(x,na.omit=F){
  if(na.omit){
    x <- x[!is.na(x)]
  }
  m <- mean(x)
  n <- length(x)
  s <- sd(x)
  skew <- sum(x-m^3/s^3)/n
  kurt <- sum(x-m^4/s^4)/n-3
  return(c(n=n,mean=m,stdev=s,skew=skew,kurt=kurt))
}
x <- 1:100
mystats(x)

#R语言循环----和其他编程语言差别不大
for (variable in c(1:10)) {
  print(variable)
}
