#Упражнение 3.1

impLab <- read.csv("FGLab.csv",stringsAsFactors = F,row.names = 1)
Manlab <- impLab[impLab$Пол=='муж',c('Имя','Рост')]
Manlab

#Упражнение 3.2

NameLab <- impLab[c(-2,-6), "Имя",drop=F]
NameLab

#Упражнение 3.3

sr <- impLab[impLab$Пол=='жен','Рост']
mean(sr)


#Упражнение 3.4

namemax <- impLab[impLab$Возраст == min(impLab[impLab$Пол=='муж',"Возраст"]) & impLab$Пол =='муж', 'Имя']
namemax
