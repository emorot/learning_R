#学好ggplot2就够了
ls("package:graphics")   #基本常见的绘图函数
demo(graphics)   #图例
help("package.contents")
help(package=graphics)
example(heatmap)

#plot函数
women
plot(women)
plot(women$height,women$weight)

#绘制线性回归的结果
fit <- lm(height~weight,data = women)
fit
plot(fit)
heatmap(state.x77)
