#列表的对象可以是R语言中任意地数据结构
state.center  #美国50个州的经纬度
#列表的创建/向量矩阵数据框字符串
a <- 1:20
b <- matrix(1:20,4)
c <- mtcars
d <- "this is a test list"
a;b;c;d
test_list <- list(a,b,c,d)
test_list
#给列表中的元素添加名称
test_list <- list("第一个"=a,"第二个"=b,"第三个"=c,"第四个"=d)
test_list

#列表的访问
test_list["第一个"]
test_list[1]
test_list[c(1,4)]  #访问多个列表
test_list[c("第一个","第四个")]
test_list$"第一个"
test_list[[1]][20]  #访问第一个列表中的第20个元素
class(test_list[1])
class(test_list[[1]])  #显然这样才能取出列表中的元素
test_list[[5]] <- iris
test_list
#删除列表中的元素
test_list <- test_list[-5]
test_list
test_list[[5]] <- NULL
test_list
