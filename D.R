#Pregunta 1
x<-c(0,1)
fmaspro<-c(0.68,0.32)
plot(x,fmaspro,type='h', ylim=c(0,1),col="purple")

n<-43
Y<- function(i){sum(sample(x,n,fmaspro,replace=TRUE))}

encuestas<-sapply(1:400000,Y)  #Realizamos infinitas encuestas
encuestas
fr<-table(encuestas)/400000 #Vemos en cuantas encuestas se repite el mismo resultado y hacemos su freq relativa, con eso obtenemos la probabilidad de que la encuesta=x
barplot(fr,col="red")
fr["13"]

dbinom(17,44,0.32)
pbinom(16,44,0.32)
qbinom(0.5,44,0.32)
 