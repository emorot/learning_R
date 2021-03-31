# 方差分析大量用在科学研究中，例如实验设计时，进行分组比较
# 例如在药物研究实验时，处理组与对照组之间进行比较


#单因素方差分析
install.packages("multcomp")
library(multcomp)   
cholesterol  #50个患者对于5种不同的疗法的数据
attach(cholesterol)  #加载数据集
head(cholesterol)
table(trt)   #统计频数
?aggregate
aggregate(cholesterol$response,by=list(trt),FUN=mean)  #分组，以平均数分组，可见第四组结果更好


#单因素协方差分析案例
attach(litter)
litter
?litter  #每个小老鼠接受不同的剂量处理
table(litter$dose)
aggregate(weight,by=list(dose),FUN=mean)
fit <- aov(weight~gesttime+dose,data = litter)
summary(fit)          


#双因素方差分析
?ToothGrowth  #vc和oj对小鼠牙齿的影响
attach(ToothGrowth)  #attach函数加载数据集，后面需要变量就不需要在打字了
ToothGrowth
aggregate(len,by=list(supp,dose),FUN=mean)
fit <- aov(len~supp*dose,data = ToothGrowth)
summary(fit)
#将结果可视化
install.packages("HH")
library(HH)
interaction.plot(dose,supp,len,type = "b",col = c("red","blue"),pch = c(16,18),main="小鼠牙齿影响因素协方差分析")
