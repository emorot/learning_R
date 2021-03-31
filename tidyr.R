mtcars
head(mtcars,3)
head(mtcars[1:4],3)
tdata <- mtcars[1:10,1:3]  #10行3列
tdata
rownames(tdata)
colnames(tdata)
tdata <- data.frame(names=rownames(tdata),tdata)  #将行名添加到数据中
tdata
library(tidyr)
?gather
gather(tdata,key = "key",value = "value",mpg,cyl,disp)  #数据融合
gather(tdata,key = "key",value = "value",mpg,-disp)  #数据融合，disp不在一列
gather(tdata,key = "key",value = "value",2:4)  #数据融合，显示2到4列
spread()  #将融合的数据在打开回到原数据

#separate()函数介绍-------分割列
?separate
df <- data.frame(x = c(NA, "a.b", "a.d", "b.c"))
df
separate(df,col = x,into = c("A","B"))  #默认分割符就是.
df <- data.frame(x = c(NA, "a.b-1", "a.d-2", "b.c-3"))
df
separate(df,col = x,into = c("A","B"),sep = "-")  #指定分隔符

# unite()连接列
?unite
df
x <- separate(df,col = x,into = c("A","B"),sep = "-")
x
unite(x,col = "AB",A,B,sep = "####")  #自定义连接符
