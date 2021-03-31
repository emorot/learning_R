#根据数据找到内在规律（内在关系）
#回归案例
# 锻炼时间和消耗卡路里之间的关系
# 食用盐和高血压之间的关系
# 教育环境中那些因素可以影响到学生的成绩
# 回归包括很多回归类型

women
plot(women$height,women$weight)
?lm   #线性回归函数，在数学中称为拟合
plot(lm(weight~height,data = women))
summary(lm(weight~height,data = women))  #根据一些指标来评价回归模型
lm(weight~height,data = women)

#abline拟合曲线
plot(women$height,women$weight)
fit <- lm(weight~height,data = women)
abline(fit)

#由于上面的情况拟合结果不是很好，所以决定添加多项式
fit2 <- lm(weight~height+I(height^2),data = women)
?lines
lines(women$height,fitted(fit2),col="red")

fit3 <- lm(weight~height+I(height^2)+I(height^3),data = women)
lines(women$height,fitted(fit3),col="blue")
#后续就没必要在进行拟合了，因为继续的拟合会导致过拟合，反而是结果不精确
