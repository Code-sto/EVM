png(filename='plot-ex06.png', bg='transparent', width = 600)
set.seed(18)
x <- rt(300,30,4)
e <- rnorm(300,0,13)

layout(matrix(c(1,2),2,1,byrow=TRUE))
hist(x, freq = F)
curve(dnorm(x, mean = mean(x), sd = sd(x)),col = "darkblue", lwd = 2, add = T)
lines(density(x), col = "red", lwd = 3)

hist(e, freq = F)
curve(dnorm(x, mean = mean(e), sd = sd(e)),col = "darkblue", lwd = 2, add = T)
lines(density(e), col = "red", lwd = 3)
dev.off()
