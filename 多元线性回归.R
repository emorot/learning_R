# 由于有时候自变量的变化可能和多个变量相关
# 所以多元线性回归就是很有必要的
# 可能是线性的
# 也可能是非线性的


#以state.x77数据集为例
state.x77
colnames(state.x77)
state.x77[,c("Murder","Population","Illiteracy","Income","Frost")]
new_state <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
new_state
fit <- lm(Murder~Population+Illiteracy+Income+Frost,data = new_state)
summary(fit)
options(digits = 4)
coef(fit)
plot(fit)
