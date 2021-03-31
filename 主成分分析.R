#主成分分析是一种降维分析------PCA
#对原始数据进行聚类（重新分组）


# 语文，数学，外语，生物化学物理，地理历史政治-----语文数学外语，文科或理科
library(psych)
attach(USJudgeRatings)
USJudgeRatings #律师对美国法官的评分

#创建碎石图
fa.parallel(USJudgeRatings,fa = "pc",n.iter = 100)   #表明只需要一个主成分
pc <- principal(USJudgeRatings,nfactors = 1,rotate = "none",scores = F)
pc
