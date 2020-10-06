png(filename = 'plot-ex05.png', bg='transparent', width = 600)
set.seed(18)
x <- rt(300,30,4)
e <- rnorm(300,0,13)
y <- 12+2*x+e
m.x <- median(x)
m.y <- median(y)
layout(matrix(c(1,2,3,4),2,2,byrow = TRUE),widths = c(3, 1), heights = c(2, 1))
plot(x,y, abline(v=m.x,h=m.y, lty=3))
boxplot(y,verical = TRUE, range = 2)
boxplot(x,horizontal = TRUE, range = 3)
dev.off()

