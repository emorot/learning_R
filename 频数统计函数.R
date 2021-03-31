mtcars
#可以直接依据气缸数（因子）的不同进行分组
mtcars$cyl
split(mtcars,mtcars$cyl)  #分组
typeof(mtcars$cyl)
#改变其数据类型为因子
mtcars$cyl <- as.factor(mtcars$cyl)
typeof(mtcars$cyl)
split(mtcars,mtcars$cyl)

#cut函数切割
?seq
seq(10,50,10)
?cut
cut(mtcars$mpg,c(seq(10,50,10)))  #10到50，间隔是10及进行分组，因子是分组的标准
#table函数统计频数(对象是因子)
table(mtcars$cyl)
table(cut(mtcars$mpg,c(seq(10,50,10))))
mtcars$cyl
prop.table(table(mtcars$cyl))   #计算频率(propotation)的函数

#二维列表的频率统计
library(vcd)
Arthritis
table(Arthritis$Treatment,Arthritis$Improved)  #二维列表统计

#xtabs函数
?xtabs
xtabs(~Treatment+Improved,data = Arthritis)  #稍微再详细一些



