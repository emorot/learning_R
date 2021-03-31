#数据框本质是一种列表
#数据框特征：数据框每一列必须为同一类型，每一行可以不同
iris   #鸢尾花数据集
mtcars #  32辆汽车在11个指标的情况
?mtcars 
rock  #48块石头形状的数据

#数据框的创建
?data.frame()
state.name;state.abb;state.region;state.x77
#将这些矩阵转换为数据框
state <- data.frame(state.name,state.abb,state.region,state.x77)
state
#数据框的访问
state[1]
state[c(2,4)]   #第二列和第四列
state[-c(2,4)]
state[c(-2,4)]  #错误
state[,"state.abb"]   #输出列
state["Wyoming",]   #输出行
state$Murder  #取出任意的一列
state$state.name
state$Illiteracy

#案例
women   #15个女性身高和体重值
plot(women)
plot(women$height,women$weight)
#进行线性回归
lm(weight~height,data = women)  #输出结果是截距和斜率

#attach函数加载数据框
?attach
attach(mtcars)
mpg
hp   #直接取数据，不需要使用$符号了
colnames(mtcars)   #列名
carb
cyl
rownames(mtcars)  #行名
detach(mtcars)  #取消加载
cyl
sum(mtcars[,"cyl"])
mtcars$mpg

#with函数
with(mtcars,{hp})   #和attach略微不同
with(mtcars,{sum(mpg)})
mtcars["cyl"]
mtcars[["cyl"]]
