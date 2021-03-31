# pvalue值就是probability值，它是一个通过计算得到的概率值，
# 在假设为真的时候，得到最大的检验统计量的概率
# 一般将值定为0.05，当p<0.05就拒绝假设，反之，不拒绝假设
# 一般原假设都是两个变量是独立的

library(vcd)
#利用独立性检验来看药物对于改善病情有无关系
mytable <- table(Arthritis$Treatment,Arthritis$Improved)
mytable
?chisq.test
chisq.test(mytable)  #pvalue值为0.0014<0.05，拒绝原假设，说明药物有效
my_second_table <- table(Arthritis$Sex,Arthritis$Improved)
chisq.test(my_second_table)  #说明原假设成立，两个变量之间之间相互独立

