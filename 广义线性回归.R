# 目的------拓展简单线性回归
?glm

#泊松回归---假设因变量是泊松分布，近年来用来预测数据
install.packages("robust")
data(breslow.dat,package = "robust")
breslow.dat  #药物治疗是否可以治疗癫痫病
attach(breslow.dat)
summary(breslow.dat)
fit <- glm(sumY~Base+Trt+Age,data = breslow.dat,family = poisson(link = "log"))
summary(fit)
coef(fit)
exp(coef(fit))

#logisitic回归---探索大致了解哪些因素时胃癌的危险因素等
install.packages("AER")
library(AER)
?Affairs
data("Affairs")
attach(Affairs)
Affairs   #婚外情的影响因素
table(Affairs$affairs)
table(Affairs$gender)
prop.table(table(Affairs$gender))  #女性的出轨率大于男性

