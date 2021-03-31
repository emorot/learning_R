#矩阵，数据框，时间序列,向量，列表，因子等
help(package="datasets")
data()
rivers   #随便查看一个数据集，北美141条河流的长度
rivers <- c(1,2,3)   #改变数据集
rivers
data("rivers")
rivers    #重新加载数据集
help("mtcars")   #32量汽车在11个指标上的情况
#内置数据集有资料，自行查看
names(euro)  #向量得属性信息
names(rivers)
state <- data.frame(state.name,state.abb,state.area,state.division,state.region) #将这5个数据集构成一个数据框
state
state.x77  #美国50个州的8个指标
iris3  #3中鸢尾花形态数据
iris
heatmap(volcano)  #某火山区的地理信息
Titanic  #泰坦尼克号成员的统计，数组
UCBAdmissions   #伯克利学院的录取信息
crimtab  #犯罪男性左手中指长度和身高的关系
HairEyeColor  #头发颜色，性别
eurodist  #类矩阵
cars #1920年代汽车速度对刹车距离的影响
mtcars  
sleep  #两种药物的催眠效果
women  #15个女性的身高和体重
state.center #美国50个州的经纬度
Orange  #桔子生长数据，类数据框

#时间序列数据，可以反应出变化的趋势
co2  #1959-1997年每月大气co2的浓度
presidents  #1945-1974年每季度美国总统的支持率
help("Cars93")
??cars93
data(package="MASS")
data(package=.packages(all.available = TRUE))  #显示R中所有可用的数据集
data(Chile,package = "carData")
Chile

