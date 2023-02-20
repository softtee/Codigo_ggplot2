##ELECCIÓN DE MUESTRA
set.seed(123)
sample(1:100, 50, replace=F)


##GRÁFICAS REALIZADAS CON GGPLOT2
library(ggplot2)

ggplot(datos, aes(x=Que, y=f, fill=Que)) + 
  geom_col(stat="indentity") +
  geom_text(aes(label=f),vjust=2,colour="white") +
  labs(x = "¿Qúe comida suele comprar?", y = "Frecuencia de respuesta") +
  guides(fill = guide_legend(title = "Tipo de comida"))
 

ggplot(datos, aes(x=pago, y=f, fill=pago)) +
  geom_col(stat="identity") +
  geom_text(aes(label=f),vjust=2,colour="white") +
  labs(x="Método utilizado para pagar",y="Frecuencia de respuesta") +
  guides(fill= guide_legend(title = "Método de pago"))


ggplot(datos) + 
  geom_histogram(aes(x=horas),bins = 7, fill="pink") +
  coord_cartesian(ylim = c(0, 30)) +
  labs(x="Horas disponibles para almorzar", y="Frecuencia de respuestas")


ggplot(datos) +
  geom_histogram(aes(x=tiempo), bins= 9, fill="#9A7CFF")+
  labs(x="Tiempo promedio de compra", y="Frecuencia de respuestas")


ggplot(datos, aes(x=productos, y=f, fill=productos)) +
  geom_col(stat="identity") +
  geom_text(aes(label=f),vjust=2, colour="white") +
  labs(x="Cuántos productos compra", y="Frecuencia de respuestas") +
  guides(fill=guide_legend(title = "Número de productos"))


ggplot(datos, aes(x=dinero, y=f, fill=dinero)) +
  geom_col(stat="identity") +
  geom_text(aes(label=f), vjust=2, colour="white") +
  labs(x="Gasto promedio en pesos", y="Frecuencia de respuestas") +
  guides(fill=guide_legend(title="Gasto promedio"))
