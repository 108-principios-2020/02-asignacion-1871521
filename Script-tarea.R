# Athziri Nalleli Charles Rosas
# 1871521
# 20/02/20


# Ejercicio #1 ------------------------------------------------------------

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

.sp <- count(especies)
.sp$rf <- .sp$freq/sum(.sp$freq)*100
.sp

barplot(.sp$freq, names.arg = .sp$x, col = "pink", ylab = "frecuencia", xlab = "Especies")

# Ejercicio #3 ------------------------------------------------------------

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

.vc <- table(conjunto$Vecinos, conjunto$Especie)
.vc1 <-addmargins(as.table(.vc))
.vc1

# Ejercicio #4 ------------------------------------------------------------

dbh <- conjunto$Diametro
range(dbh)

intervalo <- seq(7.5, 22.5, by=5)
intervalo

dbh.table <- cut(dbh, intervalo)
table(dbh.table)
hist(conjunto$Altura, breaks = intervalo, main = "Datos con intervalo definido", col = "green")



dbh.prop <- cbind(table(dbh.table))
dbh.per <- round(prop.table(dbh.prop)*100,2)


# Ejercicio #5 ------------------------------------------------------------

intervalo <- seq(7.5, 27.5, by=5)
intervalo

par(mfrow=c(1,2))
hist(conjunto$Diametro,col = "pink", main = "Sin modificar", xlab = "Diametro")
hist(conjunto$Diametro,breaks = intervalo, col = "yellow", main = "Datos intervalos")
par(mfrow=c(1,1))
