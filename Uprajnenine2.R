#Упражнение 2.1

reg <- c('Московская область','Тульская область')
year <- c(2015,2016)
month <- c('январь','февраль','март','апрель','май','июнь','июль','август','сентябрь','октябрь','ноябрь','декабрь')
file.names <- c(paste(rep(reg,each=24),paste0('Y',rep(year,each=12)),paste0(month,".csv"),sep='_'))
file.names

#Упражнение 2.2

n <- 19
num <- seq(from = n, to = n + 7) 
flow <- c("импорт", "экспорт", "реимпорт", "реэкспорт") 
okpd.code <- "22" 
df.seq <- data.frame(num, region = rep(reg, each = 4), flow, okpd.code) 
df.seq 


#Упражнение 2.3

set.seed(n*10)
x.n <- rnorm(n = 9, mean = 25, sd = 8) 
x.u <- runif(n = 9, min = -3 , max = 16) 
x.t <- rt(n = 9, df = 8) 
df.rand <- data.frame(x.n, x.u, x.t) 
df.rand 
