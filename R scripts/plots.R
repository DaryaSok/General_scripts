#R plots for default datasets

#linear model for each Species
ggplot(iris,aes(x=Sepal.Width, y=Petal.Width, col=Species)) +
  geom_point() +
  geom_smooth(method = 'lm')

# data general trend, group is shown only with colors of dots
ggplot(mtcars, aes(mpg, disp))+
  geom_point(aes(col = factor(am)))+
  geom_smooth()

# data trend for each group
ggplot(mtcars, aes(mpg, disp))+
  geom_point()+
  geom_smooth(aes(col = factor(am)))

# qq plot for each am:
ggplot(mtcars, aes(sample=wt, col=factor(am))) + 
  geom_qq() +
  geom_qq_line()
