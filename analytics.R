install.packages('sqldf')
install.packages('pastecs')
require(grDevices) # for colours
library(pastecs)
library(sqldf)

#Los numeros se tratar de escribir completos
options("scipen"=100, "digits"=4)

Mujeres       <- read.csv("~/Documentos/confiabilidad/pima-indians-diabetes.data")
Edad          <- Mujeres$Edad
Glucosa       <- Mujeres$Glucosa
VariableClase <- Mujeres$VariableClase
MetricasDescriptivas <- stat.desc(Mujeres)
MetricasDescriptivas
correlacion <- cor(Mujeres,use="pairwise.complete.obs")  
write.csv(correlacion, '~/Documentos/confiabilidad/correlacion.csv')
correlacion
