?iris
head(iris)
iris
?saveRDS
getwd()
dir()
setwd(dir = "C:/Users/14988/Desktop/R语言学习")
save(iris,file = "iris.RDS")
dir()
x <- readRDS(file = "iris.RDS",refhook = NULL)
load(".RData")   #加载Rdata文件(将变量加载进来)
