install.packages('sqldf')
install.packages('pastecs')
require(grDevices) # for colours
library(pastecs)
library(sqldf)

directorio='~/Documentos/confiabilidad/'
#Los numeros se tratar de escribir completos
options("scipen"=100, "digits"=4)

Mujeres       <- read.csv(paste(directorio,'pima-indians-diabetes.data'))
Edad          <- Mujeres$Edad
Glucosa       <- Mujeres$Glucosa
VariableClase <- Mujeres$VariableClase
MetricasDescriptivas <- stat.desc(Mujeres)
numeroEnfermos <- sqldf('select count(*) total from Mujeres where VariableClase = 1')$total
numeroNoEnfermos <- sqldf('select count(*) total from Mujeres where VariableClase = 0')$total

correlacion <- cor(Mujeres,use="pairwise.complete.obs")  
write.csv(correlacion, paste(directorio,'correlacion.csv'))
correlacion
