getwd()
dir()
setwd("c:/Users/14988/Desktop/R语言学习")
library(openxlsx)
dir()
#读文件
df <- read.xlsx("data.xlsx",1,skipEmptyRows = FALSE,skipEmptyCols = FALSE,cols =c(1,2),rows = c(1,3) )
df  #ctrl+shift+D  自动复制当前行 
?read.xlsx
?write.xlsx
x <- iris
x
#写文件
write.xlsx(x,"iris.xlsx")
read.xlsx("iris.xlsx")
pwd
dir()
#查看详细文档
?openxlsx
vignette("Introduction", package = "openxlsx")
