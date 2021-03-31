getwd()
mtcars
head(mtcars[c("mpg","hp","wt","am")])
myvars <- mtcars[c("mpg","hp","wt","am")]
myvars
summary(myvars)  #整体数据统计函数,回归分析用得到
summary(mtcars)

#其他描述性统计函数
library(Hmisc)
describe(myvars)  #详细描述
Hmisc::describe(myvars)  #第二种用法

#数据分组显示
library(MASS)
Cars93
?aggregate  #分组函数

