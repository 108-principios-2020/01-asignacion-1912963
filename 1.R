library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")


# media -------------------------------------------------------------------


mean(conjunto$Altura)
mean(conjunto$Diametro)
mean(conjunto$Vecinos)
mean(H.media$Altura)
mean(H.16$Altura)
mean(conjunto$vecinos)
mean()
mean(vecinos_3$Vecinos)
mean(vecinos_4$Vecinos)


H.media <- subset(conjunto, conjunto$Altura <= 13.9432)
H.16 <- subset(conjunto,conjunto$Altura < 16.5)
ts.douglasia <- conjunto$Especie == "H"| conjunto$Especie =="F"

# altura  -----------------------------------------------------------------


H.media <-subset(conjunto, conjunto$Altura <= 13.9432)

H.16 <- subset(conjunto,conjunto$Altura < 16.5)


# Vecinos -----------------------------------------------------------------

vecinos_3 <- subset(conjunto,conjunto$Vecinos <= 3) 
vecinos_4 <- subset(conjunto,conjunto$Vecinos > 4)


# Diámetro ----------------------------------------------------------------

DBH_media <- subset(conjunto, conjunto$Diametro < 15.794)
DBH_16 <- subset(conjunto, conjunto$Diametro > 16)


# Especie -----------------------------------------------------------------

Cedro_rojo <- subset(conjunto, conjunto$Especie == "C")
Diametrocedrorojo <- subset(Cedro_rojo, Cedro_rojo$Diametro <= 16.9)
Alturacedrorojo <- subset(Cedro_rojo, Cedro_rojo$Altura > 18.5)

Tsuga <- subset(conjunto, conjunto$Especie == "H")
Diametrotsuga <- subset(Tsuga, Tsuga$Diametro <= 16.9)
Alturatsuga <- subset(Tsuga, Tsuga$Altura > 18.5)

Douglasia <- subset(conjunto, conjunto$Especie == "F")
Diametrodou <- subset(Douglasia, Douglasia$Diametro <= 16.9)
Alturadou <- subset(Douglasia, Douglasia$Altura >= 18.5)



# Histogramas -------------------------------------------------------------

hist(conjunto$Altura, col="yellow",xlab ="Altura", ylab = "frecuencia", main ="Histograma de altura")
hist(conjunto$Diametro, col="red",xlab ="Diametro", ylab = "frecuencia", main ="Histograma de Diametro")
hist(conjunto$Vecinos, col="orange",xlab ="Vecinos", ylab = "frecuencia", main ="Histograma de Vecinos")



# desviaciones estandar ---------------------------------------------------

sd(conjunto$Altura)
sd(conjunto$Diametro)
sd(conjunto$Vecinos)


# gráficas ----------------------------------------------------------------

par(mfrow=c(2,2))
hist(Tsuga$Altura, main = "Altura especie H", 
     col="red", xlab="frecuencia")
hist(Douglasia$Altura, main= "Altura especie F")
hist(Tsuga$Diametro, main = "Diametro especie H")
hist(Douglasia$Diametro, main = "Diametro especie F")
par(mfrow=c(1,1))
