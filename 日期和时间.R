#时间序列
#预测（机器学习）
sunspots   #18世纪太阳黑子数
presidents  #1945年-1974年每季度美国总统的支持率
class(presidents)  #ts（时间序列数据）----time series
airquality  #空气质量
airquality$Ozone   #说明是数据框
class(airquality)
Sys.Date()  #查看系统当前时间
class(Sys.Date())   #时间类

#将字符串变换成日期
a <- "2020-02-08"
a
as.Date(a)
class(as.Date(a))

#seq函数创建连续的时间点
seq(as.Date("2020-02-08"),as.Date("2020-02-29"),by=2)

#ts函数将向量转换成时间序列
?ts
?runif
a <- round(runif(48,min = 50,max = 100))  #生成48个50到100的随机整数
a
?ts
ts(data = a,start = c(2010,1),end = c(2014,1),frequency = 1)  #每年（包括2010的一个年头）
ts(data = a,start = c(2010,1),end = c(2014,1),frequency = 4)  #每季度
ts(data = a,start = c(2010,1),end = c(2014,1),frequency = 12)  #每月


#ts直接打印出日期
# Mon Feb 08 19:14:37 2021 ------------------------------
ts
