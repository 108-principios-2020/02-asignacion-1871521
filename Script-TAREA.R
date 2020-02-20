# Athziri Nalelli Charles Rosas
# 1871521
# 20/02/20


# Ejercicio #1 ------------------------------------------------------------


library(plyr)
accidentes <- c(0,1,0,2,2,1,4,3,0,1,5,1,2,3,4,0,1,1,3,4)
acc <- count(accidentes)
acc 


(acc$freq/sum(acc$freq)*100)

acc$rf <- acc$freq/sum(acc$freq)*100

barplot(acc$freq, names.arg = acc$x, main = "accidentes en el aserradero", col = "yellow")
mean(accidentes)
sum(accidentes)


# Ejercicio #2 ------------------------------------------------------------

especies <- c("F","H","F","C","F","A","H","F","H","C","A","C","F","H","H","H","F","H","A","C","F","H","H","F")

.sp <- count(especies)
.sp$rf <- .sp$freq/sum(.sp$freq)*100
.sp

barplot(.sp$freq, names.arg = .sp$x, col= "yellow", ylab= "frecuencia", xlab= "Especies"  )


# Ejercicio #3 ------------------------------------------------------------

library(repmis)
cuadro1 <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

#Encontrar la frecuencia absoluta para la variable vecinos y especie

.vc <- table(cuadro1$Vecinos, cuadro1$Especie)
.vc1 <- addmargins(as.table(.vc))
.vc1


# Ejercicio #4 ------------------------------------------------------------

dbh <- cuadro1$Diametro 
range(dbh)
intervalo <- seq(7.5, 25.5, by=5)
intervalo

dbh.table <- cut(dbh,intervalo)
table(dbh.table)

par(mfrow=c(1,2))
hist(dbh, main = "Datos de intervalo definidos", col="pink")
hist(cuadro1$Altura, breaks = intervalo, main = "Datos con intervalo definido", col = "green")
par(mfrow=c(1,1))

dbh.prop <- cbind(table(dbh.table))
dbh.per <- round(prop.table(dbh.prop)*100,2)


# Ejercicio #5 ------------------------------------------------------------

diametro <- cuadro1$Diametro
range(diametro)
intervalo <- seq(7.5, 27.5, by=5)
intervalo

par(mfrow=c(1,2))
hist(cuadro1$Diametro, col= "orange" , main = "sin modificar", xlab = "diametro")
hist(cuadro1$Diametro, breaks = intervalo, col= "red", main = "Datos intervalos")
par(mfrow=c(1,1))
