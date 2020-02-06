library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")


# media -------------------------------------------------------------------


mean(conjunto$Altura)
mean(conjunto$Diametro)
mean(conjunto$Vecinos)





ts.douglasia <- conjunto$Especie == "H"| conjunto$Especie =="F"

# altura  -----------------------------------------------------------------


H.media <-subset(conjunto, conjunto$Altura <= 13.9432)

mean(H.media$Altura)


H.16 <- subset(conjunto,conjunto$Altura < 16.5)

mean(H.16$Altura)


# Vecinos -----------------------------------------------------------------

vecinos_3 <- subset(conjunto,conjunto$Vecinos <= 3) 
vecinos_4 <- subset(conjunto,conjunto$Vecinos > 4)
mean(vecinos_3$Vecinos)
mean(vecinos_4$Vecinos)


# Diámetro ----------------------------------------------------------------

DBH_media <- subset(conjunto, conjunto$Diametro < 15.794)
DBH_16 <- subset(conjunto, conjunto$Diametro > 16)

mean(DBH_16$Diametro)
mean(DBH_media$Diametro)

# Especie -----------------------------------------------------------------

Cedro_rojo <- subset(conjunto, conjunto$Especie == "C")
Diametrocedrorojo <- subset(Cedro_rojo, Cedro_rojo$Diametro <= 16.9)
Alturacedrorojo <- subset(Cedro_rojo, Cedro_rojo$Altura > 18.5)

Tsuga <- subset(conjunto, conjunto$Especie == "H")
Douglasia <- subset(conjunto, conjunto$Especie == "F")
ts.douglasia <- subset(conjunto, conjunto$Especie == "H"| conjunto$Especie =="F")

# Histogramas -------------------------------------------------------------

par(mfrow=c(2,2))
hist(Tsuga$Altura, main = "Altura especie H", 
     col="red", xlab="Alturas", ylab="Frecuencia")
hist(Douglasia$Altura, main= "Altura especie F",
     col="blue", xlab="Alturas", ylab="Frecuencia")
hist(Tsuga$Diametro , main = "Diametro especie H",
     col="yellow", xlab="Altura", ylab="Frecuencia")
hist(Douglasia$Diametro, main= "Diametro especie F",
     col="pink", xlab="Altura", ylab="Frecuencia")
par(mfrow=c(1,1))



# desviaciones estandar ---------------------------------------------------

sd(conjunto$Altura)
sd(H.media$Altura)
sd(H.16$Altura)

sd(DBH_16$Diametro)
sd(DBH_media$Diametro)
sd(conjunto$Diametro)

sd(conjunto$Vecinos)
sd(vecinos_3$Vecinos)
sd(vecinos_4$Vecinos)


