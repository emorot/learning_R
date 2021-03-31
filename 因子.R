#在R中名义型变量和有序性变量称为因子（统计学知识）
#因子的应用：计算频数，独立性检验，相关性检验，方差检验，方差分析，主成分分析，因子分析
mtcars[,"cyl"]
mtcars$cyl   #气缸数作为因子分类依据
?mtcars
table(mtcars$cyl)   #频数统计
f <- factor(c("red","yellow","blue","red","blue"))   #创建因子（名义型变量）
f
week <- factor(c("Mon","Fri","Thu","Wen","Fri","Sun"))
week
#人为指定level水平
week <- factor(c("Mon","Fri","Thu","Wen","Fri","Sun"),order =TRUE,
               levels = c("Mon","Tue","Wed","Thu","Fri","Sat","Sun"))
week
#利用已有数据直接生成因子
fcyl <- factor(c(mtcars$cyl))
fcyl
table(mtcars$cyl)
plot(mtcars$cyl)  #不加因子的绘图效果，散点图
plot(fcyl)  #条形图
#cut函数简介
num <- c(1:100)
num
cut(num,c(seq(1,100,9)))
plot(cut(num,c(seq(1,100,9))))   #分组

#其他类型的因子数据
state.division
plot(state.division)
state.region
plot(state.region)
class(state.region)   #因子类型




























