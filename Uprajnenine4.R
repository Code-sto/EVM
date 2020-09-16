#Упражнение 4.1

data(women)

#Упражнение 4.2

?women

#Упражнение 4.3

str(women)

#Упражнение 4.4

head(women,n=5)
tail(women,n=5)
summary(women)

#Упражнение 4.5

a <- colnames(women)
a

#Упражнение 4.6

women[,sapply(women,is.numeric)]

#Упражнение 4.7

sapply(women,sd)/sapply(women,mean)
sapply(women,IQR)/2
