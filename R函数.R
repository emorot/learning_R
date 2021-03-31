state.x77
head(state.x77,1)
state.x77[,"Population"]
setwd(dir = "C:/Users/14988/Desktop/R语言学习")
state.x77[,c("Population","Income","Illiteracy","Murder")]
#Illiteracy----文盲率
state <- as.data.frame(state.x77[,c("Population","Income","Illiteracy","Murder")]) #转换成数据框
class(state)
fit <- lm(Murder~Population+Income+Illiteracy,data = state)
fit
summary(fit) #结果输出三颗星就是显著相关
#Intercept---截距



