library(plyr)
accidentes <- c(0,1,0,2,2,0,1,4,3,0,1,5,1,2,3,4,0,1,1,3,4)
acc <- count(accidentes)
acc


(acc$freq/sum(acc$freq)*100)

acc$rf <- acc$freq/sum(acc$freq)*100

barplot(acc$freq, names.arg = acc$x, main = "Accidentes en el aserradero", col = "pink")

mean(accidentes)
sum(accidentes)
barplot(accidentes)



# Ejercicio #2 ------------------------------------------------------------

especies <- c("F","H","F","C","F","A","H","F","H","C","A","C","F","H","H","H","F","H","A","C","F","H","H","F")

Frecu <- table(especies)
Frecu
prop.table(Frecu)



# Ejercicio #3 ------------------------------------------------------------

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

Frecu <- table(conjunto$Especie)
Frecu


Frecu <- table(conjunto$Vecinos)
Frecu


# Ejercicio #4 ------------------------------------------------------------

dbh <- conjunto$Diametro
range(dbh)

intervalo <- seq(8, 21, by=3)
intervalo

dbh.table <- cut(dbh, intervalo)
table(dbh.table)

dbh.prop <- cbind(table(dbh.table))
dbh.per <- round(prop.table(dbh.prop)*100,2)


# Ejercicio #5 ------------------------------------------------------------

intervalo <- seq(7.5, 25.5, by=5)
intervalo

par(mfrow=c(1,2))
hist(conjunto$Diametro,col = "pink", main = "Sin modificar", xlab = "Diametro")
hist(conjunto$Diametro, col = "yellow", main = "Datos intervalos")
par(mfrow=c(1,1))
