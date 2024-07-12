

####### CURSO INTRODUCCIÓN A R PARA ARQUEOLOGOS/AS #######

# Primer modulo: María Coto Sarmiento



###### MODULO A. INTRODUCCIÓN (SECCIONES 0-3) ######

# Instalar un paquete en R: ggplot2, paquete de visualización de datos y dplyr paquete de manipulación de datos

#para conocer qué paquetes tenemos instalados

installed.packages()

#instalar el paquete ggplot2 si en el caso no lo tuviese previamente instalado. Solo es necesario hacerlo una vez. 

install.packages("ggplot2")

#Cargar el paquete ya instalado

library(ggplot2)
library(dplyr)


###### MODULO B. OPERACIONES (SECCIONES 4-6) #######


#### 4. OPERACIONES BÁSICAS CON R ####


##sumar y restar

3+5-1

#Multiplica

3*5

#divide

5/2

#calcula la potencia 4^2

4^2

#calcula  5*10/2

5*10/2


#### 5. OPERACIONES LÓGICAS ####

#Operaciones que dan como respuesta es un valor booleano (TRUE or FALSE)

#Menor que

5<3

#Mayor que 

5>3

#### 6. ASIGNACIONES, VARIABLES NUMÉRICAS Y DE CARACTERES ####

## ASIGNACIONES

#Asignaciones: se usan para dar un valor al resultado de una operación en el lado derecho. Crea un objeto/variable. 


a = 1

#b -> 2 no se usa ya

c <- 3


#VARIABLES NÚMERICAS Y DE CARACTERES

#Se denominan también vectores. Las más comunes son las numericas y las de caracteres. 
#Las variables numéricas son las que contienen números mientras que las de caracteres son las que contienen texto. 


#Variables númericas

c <- 25
c

#Cómo saber qué tipo de variable es

class(c)

#Variable de tipo caracter

nombre <- "Maria"
nombre

#qué tipo de variable es?

class(nombre)


## EJERCICIO 1

x <- 7 + 3
y <- 20 / 2
x == y 


## EJERCICIO 2

x <- 7 + 3
y <- 15 / 2
z <- 7-3

resultado <- (x > y) & (y > z)
resultado

## EJERCICIO 3. La señora de los gatos
# Asigna una variable por cada gato
# Designa un nombre a cada gato usando cada una de las variables

gatete1 <- "Agustin"
gatete2 <- "Jennifer"
gatete3 <- "Pedro"
gatete4 <- "Mantequilla"
gatete5 <- "Xurxo"


#### 7. VECTORES Y FACTORES ####

### 7a. VECTORES ###

#¿Qué son los vectores? Se tratan de espacios de almacenamiento que se usan para guardar información y permite almacenar varios objetos
#No confundir con variable. Variable es como un contenedor que almacena datos, pudiendo ser un valor único o estructura de datos mientras que los 
#vectores son una estructura de datos que pueden ser almacenados en una variable

#Existen distintos tipos de vectores: numéricos, no numéricos (de tipo caracter) y lógicos


#vectores numéricos

score <- c(7.5,5,8.7)
score

#vectores no numéricos

pelicula <- c("Saw", "Saw2", "Saw3", "Saw4")
pelicula

#vectores lógicos

prueba <- c(TRUE, FALSE, TRUE)
prueba

#Operaciones con vectores

#función length. Funciona para ver cuántos elementos tiene un vector. 

length(pelicula)

#función seq. Crear secuencias numéricas más rápidas. 

seq(1,50)

# EJERCICIO 4. Ejercicios con vectores a partir de una base de datos de yacimientos

#1. Crea un vector con los yacimientos
#2. Crea un vector con las ánforas

#La base de datos está en MODULO B. OPERACIONES --> data_A

yacimientos <- c("La Dehesilla", "El Alamo", "El Cachopo", "El desmadre", "La Penumbra")
yacimientos

anforas <- c(120,12,52,96,200)
anforas

#3. Unir varios vectores

names(anforas) <- c("La Dehesilla", "El Alamo", "El Cachopo", "El desmadre", "La Penumbra")

anforas

#4. selecciona el yacimiento "La Penumbra"

anforas[5]

#5. Selecciona tres yacimientos

muestra_selected <- c(anforas[1], anforas[3], anforas[5])

muestra_selected

#6. Función sort para ordenar. Ordena de mayor a menor la muestra selected. Se usa la función aquí decreasing que puede ser TRUE o FALSE

sort(muestra_selected, decreasing = TRUE)

## Crea un nuevo vector de monedas

monedas <- c(5,2,35,10,25)
monedas

##8. Agregale el yacimiento

names(monedas) <- c("La Dehesilla", "El Alamo", "El Cachopo", "El desmadre", "La Penumbra")

monedas

### 7b. OPERACIONES CON VECTORES ###

##sumar

sum(anforas)

sum(monedas)

sum(anforas+monedas)


#summary(). Resumen de las propiedades del objeto o factor. 

summary(anforas)
summary(monedas)


#calcular la media. Calcula la media del total 

mean(anforas)

#calcular la mediana. Valor que ocupa el lugar central del total y que se ordena de menor a mayor. 

median(monedas)

### 7c. FACTORES ###

#Son datos no numericos. Variable categórica. 

ciudades <- c("Sevilla", "Vigo", "Barcelona", "Málaga")
ciudades
class(ciudades)
#se usa factor para convertir la variable en un factor
ciudades <- factor(ciudades)
ciudades
class(ciudades)


##EJERCICIO 5

#1. Crear tres nuevos vectores de yacimiento, número de materiales y cronologia

#La base de datos está en MODULO B. OPERACIONES --> data_B

yacimiento <- c("La Dehesilla", "El Alamo", "El Cachopo", "El desmadre", "La Penumbra")
yacimiento
materiales <- c(150,200,450,552,20)
materiales
cronologia <- c("romano", "medieval", "paleolitico", "romano", "medieval")
cronologia

##2. unir todo usando la función cbind

material_arqueologico <- cbind(yacimiento,materiales,cronologia)

## 3. Visualiza la base de datos usando View()
#te aparece automaticamente en tu consola

View(material_arqueologico)

## 4. Tu primer plot. haz un plot de materiales y luego prueba también con cronologia

plot(materiales)

plot(cronologia) #qué ocurre en este último por qué no puedo hacer un plot? 

#cronologia es un vector de caracteres y necesitamos convertirlo en factor para hacer el plot para que pueda interpretarlo el plot como etiqueta

class(cronologia)


#5. Convierte el vector en factor en cronologia para poder hacer el plot 

crono <- factor(cronologia)


#creamos un plot chungo, pero es tu primer plot en condiciones. 

plot(crono)


###### MODULO C. OTRAS OPERACIONES (BASE DE DATOS) (SECCIONES 8-10) ######


#### 8. MATRICES ####

#Las matrices son un conjunto bidimensional de números. Para ello se usa la función matrix()

#Crear una matrix

mi_matrix <- matrix (data= c(1,2,3,4), nrow=2, ncol=2)
mi_matrix

#Añade más números a la matrix y selecciona las dos primeras columnas y las dos primeras filas

##te saldrá un warning para advertirte que no estás incluyendo todos los datos. 

mi_matrix_2 <- matrix (data = c(1,2,3,4,5,6), nrow=2, ncol=2)
mi_matrix_2

#usa la función byrow= TRUE/FALSE para ordenar por filas. TRUE ordena por filas y FALSE ordena por columnas

mi_matrix_b <- matrix (data= c(1,2,3,4), nrow=2, ncol=2, byrow = TRUE)
mi_matrix_b

#prueba con FALSE, que hay que probarlo todo en esta vida


#asignar nombres a una matrix. En este caso asignamos dos listas de yacimientos y tipos de materiales

mi_matrix_name <- matrix (data= c(1,2,3,4), nrow=2, ncol=2,dimnames=list(c("Joyosa","Alcantarilla"),c("piedra", "moneda")))
mi_matrix_name


#si te has confundido y quieres cambiar el nombre de columnas o rows usa
#rownames para filas y colnames para columnas


rownames(mi_matrix_name) <- c("Villa Joyosa","Alcantarilla2")

mi_matrix_name

##Si quieres seleccionar un valor concreto de la matrix. Selecciona primero la fila y luego la columna. 

mi_matrix_name[2,2]

#Ahora prueba tú. Selecciona el valor marcado en la diapositiva

mi_matrix_name[2,3]

#Cuando tienes que añadir más cosas a la matrix porque se te ha olvidado. No problemo. 

#Usa la función cbind para añadir una nueva columna con nuevos valores

mi_matrix_name <- cbind(mi_matrix_name, c(5,2))

mi_matrix_name

#usa la función colnames para agregar un nombre a la nueva columna creada con cbind. En este caso anforas

colnames(mi_matrix_name)<- c("piedra","moneda", "anforas")

mi_matrix_name

#EJERCICIO 6

#Usa rbind para agregar una fila con tres valores

mi_matrix_name <- rbind(mi_matrix_name, c(1,3,5))
mi_matrix_name

#dale nombre a la fila

rownames(mi_matrix_name) <- c("Villa Joyosa","Alcantarilla2","La piscina")

mi_matrix_name

#FALTAN MÁS COSAS DE LA MATRIX


#### 9. DATA FRAME ####

# un dataframe permite el almacenamiento de datos en forma de base de datos
# Funciona con Todo tipo de caracteres (númericos, caracter...)
# Diferencia de matrix: solo elementos númericos y enteros
# Se Usa as.data.frame() y as.matrix() para cambiar


#para convertir una matrix en una data frame se usa as.data.frame() y si es viceversa as.matrix()

mi_data_frame <- mi_matrix_name

mi_data_frame

mi_data_frame <- as.data.frame(mi_data_frame)

mi_data_frame

#para saber si se ha convertido en una dataframe correctamente se usa class

class(mi_data_frame)

#Para seleccionar de forma individual uno de los valores de la dataframe y ver qué tipo es 

class(mi_data_frame[,1])

#otra forma de hacerlo 

class(mi_data_frame$anforas)

#EJERCICIO 7

# 1. Crea una dataframe que incluya la información de la base de datos en la diapositiva

x <- data.frame(amigos = c("Alberto", "Xurxo", "Jose", "Laura", "Paloma"), edad = c(35, 31, 30, 25, 38), arqueologia = c("si","no","si", "no", "no"))


# 2. Qué tipo de dato estamos manejando. Explora los datos usando class()

class(x$amigos)

# 3. Selecciona la columna amigos

x$amigos

#4. Se me ha olvidado mi amiga Maria, así que es necesario agregar sus datos

nueva_amiga <- data.frame(amigos = "Maria", edad = 28, arqueologia = "si")

nueva_amiga

#Agregar la nueva amiga al dataframe original

x <- rbind(x, nueva_amiga)


#### 10. LISTAS ####

#Las listas son un conjunto de datos que contienen elementos de distintos tipos (matrix, dataframe, vectores)

#EJERCICIO 8

#1. Crea una nueva matrix (nueva_matrix)
#2. Crea un dataframe (nueva_dataframe)
#3. Crea un vector (nuevo_vector)

nueva_matrix <- matrix (data = c(1,2,3,4,5,6), nrow=2, ncol=3)
  
nueva_dataframe <- data.frame(amigos = c("Alberto", "Xurxo", "Jose", "Laura", "Paloma"), edad = c(35, 31, 30, 25, 38), arqueologia = c("si","no","si", "no", "no"))
  
nuevo_vector <- c("La Dehesilla", "El Alamo", "El Cachopo", "El desmadre", "La Penumbra")
  
#4. Fusiona la matrix, el dataframe y el nuevo vector formando una nueva lista

mi_lista <- list(nueva_matrix, nueva_dataframe, nuevo_vector)

#5. Selecciona la lista para ver lo que hay 

mi_lista

##para leer la lista

str(mi_lista)

#6. Seleccciona una o varias listas de tu lista

# Selecciona la lista 2

mi_lista[[2]] 

# Selecciona las listas 1 y 2 de tus listas

mi_lista[c(1,2)]


##### MODULO D.  MANEJO DE DATOS (SECCION 11) #####

#### 11. IMPORTAR DATOS ####

#Si te pierdes por R, usa esta función para saber exactamente en qué directorio estás

getwd()

#Para archivos .csv se usa las funciones de importar datos read.csv() y read.csv2()

#read.csv()  <-  valores separados por coma 
#read.csv2() <- valores separados por punto y coma, y coma para decimales

#importa los datos del MODULO D. MANEJO DE DATOS ---> datos_D

datos_D <- read.csv("C:/Users/au721330/OneDrive - Aarhus Universitet/Desktop/Curso_Introducción_Rprogram/Introducción_R/MODULO D. MANEJO DE DATOS/datos_D.csv")

datos_D

#también se pueden importar datos usando la estructura de read.table()

#La diferencia es que se añade el separador usando sep y el header o encabezado que es nuestro caso es TRUE porque tenemos

mis_datitos <- read.table("C:/Users/au721330/OneDrive - Aarhus Universitet/Desktop/Curso_Introducción_Rprogram/Introducción_R/MODULO D. MANEJO DE DATOS/datos_D.csv", sep="," , header = TRUE) 
mis_datitos

#Para importar en excel usa la opción import dataset ---> from excel

datos_E <- read_excel("MODULO D. MANEJO DE DATOS/datos_E.xlsx")
datos_E

#selección de columnas y filas. El orden es fila - columna


#Usamos la base de datos anterior de mis_datitos

#Si tienes que seleccionar la primera columna

mis_datitos_col <- mis_datitos[,1]

mis_datitos_col

#si quieres agregar dos columnas usa [,1:2]

#selección dos primeras filas

mis_datitos_fil <- mis_datitos[1:2,]
#mis_datitos_fil <- mis_datitos[1:5,c(1,3)] seleccion de las cinco filas y la columna uno y tres


mis_datitos_fil

#EJERCICIO 9

#importa los datos del MODULO D. MANEJO DE DATOS ---> datos_D

#1. Selecciona columnas: precio_antecovid y precio_postcovid
#2. Selecciona las tres primeras filas

mis_datitos

mis_datitos_sele <-mis_datitos[0:2,2:3]

mis_datitos_sele

#otra forma de seleccionar una columna

df <- mis_datitos$precio_postcovid

df

#Si quieres borrar de tu base de datos una columna usa la función subset.

select_data <- subset(mis_datitos, select = -precio_postcovid)

select_data

#Si quieres eliminar una fila (la tercera). Subset no sirve para filas

select_data<- select_data[-3,]
select_data

###### MODULO E. GRAFICOS CON R #####

#### 12. GRAFICOS CON R ####

#Lo primero de todo! Instala el paquete ggplot2 o tidyverse si vais a trabajar con tidy. 

library(ggplot2)
library(tidyverse)

#EJERCICIO 10

#Vamos a jugar a un juego. 

#1. Usa papel y boli 
#2.Crea una gráfica incluyendo cronología, yacimiento, tipo de pieza, y densidad de la pieza 

##aquí tienes con R, pero eso lo aprenderemos después usando el scatter plot


###poner la carpetaaaa
grafico <- read.csv("C:/Users/au721330/OneDrive - Aarhus Universitet/Desktop/Curso_Introducción_Rprogram/Introducción_R/MODULO GRÁFICOS CON R/datos_.txt", comment.char="#")

# Crear la gráfica de burbujas

ggplot(grafico, aes(x = Cronología, y = Yacimiento)) +
  geom_point(aes(size = Densidad, color = Tipo.de.pieza), alpha = 0.7) +
  scale_size_continuous(name = "Densidad") +
  labs(
    title = "Distribución de Piezas Arqueológicas",
    x = "Cronología",
    y = "Yacimiento",
    color = "Tipo de Pieza"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5),
    axis.text.x = element_text(angle = 45, hjust = 1)
  )


#### 12a. TIPOS DE GRÁFICOS ####


#BARPLOT. Es el plot más común. Muestra la relación entre una variable categórica y númerica. 

#1. Crea un dataframe con dos valores: anforas y cantidad

nuevo_barplot <- data.frame(anforas = c("dressel20", "dressel23", "dressel1", "Dressel19", "Dressel14"), cantidad = c(35, 31, 30, 25, 38))

nuevo_barplot

# 2. haz el plot y mira qué ocurre. 

barplot(nuevo_barplot)  ## no funciona, debe ser un vector o matrix y tachan! estamos trabajando con un dataframe


#3. Al no funcionar lo vamos a convertir en vectores 

# Extraer el vector numérico
barploteado <- nuevo_barplot$cantidad

# Asignar nombres al vector
names(barploteado) <- nuevo_barplot$anforas

# Crear el gráfico de barras
barplot(barploteado)


# Una forma no muy complicada es que si queremos trabajar con dataframe podemos usar ggplot


ggplot(nuevo_barplot, aes(x = anforas, y = cantidad, fill = anforas)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("red", "green", "blue", "yellow", "pink")) +
  theme_minimal() +
  theme(legend.position = "none") +  # Oculta la leyenda ya que no es necesaria
  labs(title = "Mi primer gráfico de barras")

#los colores son un poco feos, vamos a darle un toque más bonico. Para ello usaremos las palettas de RColorBrewer. 
#si no la tienes en R, la tienes que instalar

library(RColorBrewer)

ggplot(nuevo_barplot, aes(x = anforas, y = cantidad, fill = anforas)) +
  geom_bar(stat = "identity") +
  scale_fill_brewer(palette = "Set2") +
  theme_minimal() +
  theme(legend.position = "none") +  # Oculta la leyenda ya que no es necesaria
  labs(title = "Ánforas yacimiento La Penumbra",
       x = "Ánforas",
       y = "Cantidad")

#LINE CHART
#representa una evolución de una u dos variables numericas. Por lo que necesitará una varaible numerica en x y una variable numerica en Y, así como una variable categorica para definirlas

#instala una librería con datos de nombres de bebes y su evolución. Se trata de un dataframe. 
library(babynames) 

#se instala esta librería porque se va a seleccionar nombres
library(dplyr)

#explora la base de datos

babynames

#selecciona tres nombres romanos (Augusta, Julia y Cornelia)

bebes_linea <- babynames %>% 
  filter(name %in% c("Julia", "Augusta", "Cornelia")) %>%
  filter(sex=="F")

bebes_linea

bebes_linea %>%
  ggplot( aes(x=year, y=n, group=name, color=name)) +
  geom_line(size=1) +
  scale_color_brewer(palette = "Set1") +
  labs(title = "Evolución nombres bebes",
       x = "Año",
       y = "Número")
 
#BOXPLOT

# Visualiza la distribución de un conjunto de datos.

#la información que proporciona:

#Mediana: 50 % de los datos
#Minimum: mínimo
#Maximum: máximo
#1st Quartile: 25% de los datos 
#3rd Quartile: 75% de los datos
#IQR:  dispersion del 50 % de datos


#crear una nueva base de datos

# Crear una base de datos ficticia de sitios paleoliticos

yacimientos_paleoliticos <- data.frame(
  yacimiento = rep(c("La Dehesilla", "La Dehesilla 2", "El tormento", "Abersimemuero"), each = 10),
  sitios_encontrados = c(5, 7, 6, 8, 5, 7, 6, 9, 5, 7,
                         12, 14, 13, 11, 14, 13, 12, 10, 11, 14,
                         8, 6, 7, 8, 9, 10, 8, 7, 8, 9,
                         15, 16, 14, 15, 16, 15, 14, 13, 14, 16))

#También lo puedes importar el documento desde MODULO E. GRÁFICOS CON R ---> datos_F.txt y así te ahorras de escribir

datos_F <- read.csv("C:/Users/au721330/OneDrive - Aarhus Universitet/Desktop/Curso_Introducción_Rprogram/Introducción_R/MODULO E.  GRÁFICOS CON R/datos_F.txt")


# Mostrar la base de datos
print(datos_F)

ggplot(datos_F, aes(x=yacimiento, y=sitios_encontrados, fill=yacimiento)) + 
  geom_boxplot(varwidth = TRUE, alpha=0.2) + 
  theme(legend.position="none") 
  

#Ponle un título a la gráfica


ggplot(datos_F, aes(x=yacimiento, y=sitios_encontrados, fill=yacimiento)) + 
  geom_boxplot(varwidth = TRUE, alpha=0.2) + 
  theme(legend.position="none") +
  labs(title="Yacimientos que me he inventado")


#SCATTER PLOT

# Analiza la relación de dos variables numericas
# Calcula la correlación entre dos variables

#vamos a hacer un scatter plot de peliculillas. Importa el archivo datos_E.csv
# La base de datos y algunos análisis se pueden extraer de aquí https://github.com/Mcotsar/Disturbingmovieslist

datos_G <- read.csv("C:/Users/au721330/OneDrive - Aarhus Universitet/Desktop/Curso_Introducción_Rprogram/Introducción_R/MODULO E.  GRÁFICOS CON R/datos_G.csv")


#revisa la base de datos

print(datos_G)

#comprueba que está todo en orden

names(datos_G)

#haz el plot a ver qué ves. Yo no veo nada, esto es un caos

plot(datos_G)

#ahora usa ggplot que es más bonico. Aquí vamos a ver la correlación que existe entre la puntuación de una película, la nacionalidad y la fecha de estreno. 


ggplot(datos_G, aes(x = date, y = score, color = nationality)) + 
  geom_point(size=6, alpha = 0.6) +  
  ggtitle("Lista de peliculas")

#EJERCICIO 11

#Queremos conocer la relación que existe entre el número de votantes (n.voters), la puntuación que le dan y los comentarios


#solución: visualiza comments, n.voters y score

ggplot(datos_G, aes(x = n.voters, y = score, color = comments)) + 
  geom_point(size=6, alpha = 0.6) +  
  ggtitle("Lista de peliculas")


#Si se quiere visualizar los nombres porque así entendemos el patrón del tipo de película, tenemos que incluir geom_text. Aquí un par de ejemplos.

#Incluye n.voters, score y commentarios

ggplot(datos_G, aes(x = n.voters, y = score, color = comments)) + 
  geom_point(size=6, alpha = 0.6) +  
  ggtitle("Lista de peliculas") +
  geom_text(aes(label = film), 
            nudge_x = 0.2, nudge_y = 0.1, 
            check_overlap = TRUE)


#Incluye n.voters, fecha(date) y nacionalidad

ggplot(datos_G, aes(x = date, y = score, color = nationality)) + 
  geom_point(size=6, alpha = 0.6) +  
  ggtitle("Lista de peliculas") +
  geom_text(aes(label = film), 
            nudge_x = 0.2, nudge_y = 0.1, 
            check_overlap = TRUE)


#EJERCICIO 12
#¿Los yacimientos más cercanos comparten la misma densidad en el tipo de pieza ?

datos_H <- read.csv("C:/Users/au721330/OneDrive - Aarhus Universitet/Desktop/Curso_Introducción_Rprogram/Introducción_R/MODULO E.  GRÁFICOS CON R/datos_H.txt", comment.char="#")


# Crea el scatter plot que incluya cronología, yacimiento y densidad

ggplot(datos_H, aes(x = Cronología, y = Yacimiento)) +
  geom_point(aes(size = Densidad, color = Tipo.de.pieza), alpha = 0.7) +
  scale_size_continuous(name = "Densidad") +
  labs(
    title = "Distribución de Piezas Arqueológicas",
    x = "Cronología",
    y = "Yacimiento",
    color = "Tipo de Pieza"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5),
    axis.text.x = element_text(angle = 45, hjust = 1)
  )



###### MODULO F . ANÁLISIS ESTADÍSTICO (SECCION 13) ######

#### 13. ANALISIS ESTADÍSTICO ####

#Calcular la media. La media es la suma de todos los valores observados y divididos por el número total 
# 10 + 10 + 10 = 30/3 = 10 

media <- c(10,10,10)
mean(media)

#Calcular la mediana. La mediana es el conjunto de valores que se encuentran en la mitad de los otros valores. 
#Si se ordenan de menor a mayor, los valores se encuentran en medio

#mediana con número impar
mediana_a <- c(9,5,4,2,7)

median(mediana_a)

#mediana con numero par. Se seleccionan los números del centro, se suman y luego se dividen por dos

mediana_b <- c(9,5,4,2)

median(mediana_b)

#Moda. Valor con más frecuencia en un conjunto de datos de valores observados.

#Funciona tanto en valores categóricos o discretos 
#A diferencia de los anteriores necesitamos crear una función especifica para calcular la moda

moda <- c(10,10,10,5,4,3,8,4)
mode <- function(moda) {return(as.numeric(names(which.max(table(moda)))))}
mode(moda)


#Desviación estandar. Se usa para cuantificar la variación o la dispersión de un conjunto de datos numéricos con respecto a la media. 
#Baja= datos más aproximados a la media (no varían)
#Alta= datos con valores más dispersos a la media (mayor variabilidad/heterogeneidad)

de <- c(2,2,2,3,4,5,4,4)
sd(de)

de_b <- c(2,8,5,10,3,12,7,1)
sd(de_b)

#Varianza
#Medida estadística que indica cuánto se dispersan o varían los datos respecto a su valor medio (promedio)
#Calculo: se usa la diferencia en cada valor de la muestra y la media, se eleva al cuadrado y se promedia.  

v <- c(2,2,2,3,4,5,4,4)
rc <- var(v)

#si este resultado calculamos la raiz cuadrada

sqrt(rc)

#Función summary. Detalle estadístico de los datos.

summary(v)

#si tienes dudas sobre lo que estás haciendo o sobre alguna función puedes utilizar la opcion ? con la función para que te R te de una descripción detallada

?mean

#ANALISIS CON ANOVA# 
#Análisis de varianza (anaysis of variance)
#Técnica estadística que se usa para comparar las medias de tres o más grupos para determinar si existen diferencias significativas entre las medias de los grupos o si son productos del azar. 
#Compara la varianza entre los grupos con la varianza dentro de los grupos. 

#EJERCICIO 13

#¿Se pueden detectar diferencias significativas en la producción?
#Tenemos tres centros productores y queremos saber si se pueden detectar diferencias significativas en el diametro de una vasija y cuales son parecidos.

#Importa el dataset datos_I.csv

datos_I <- read.csv("C:/Users/au721330/OneDrive - Aarhus Universitet/Desktop/Curso_Introducción_Rprogram/Introducción_R/MODULO F. ANALISIS ESTADÍSTICO/datos_I.csv")

head(datos_I)

resultado_anova <- aov(Diametro ~ Centro, data = datos_I)

summary(resultado_anova)

#el resultado ha sido de 0.0000000675 así que podemos rechazar la hipótesis nula lo que significa que hay diferencias significativa entre cada taller

# El ANOVA permite hacer una valoración general, pero se necesitará algo más.
#Prueba post-hoc ayuda a identificar especificamente en qué grupos existen diferencias significativas de acuerdo con los resultados por la ANOVA

# La prueba de Tukey de usa Para identificar específicamente qué pares de centros son significativamente diferentes, realizamos una prueba post-hoc de Tukey
# Se usa para cuando se tiene seis o más grupos

TukeyHSD(resultado_anova)


#REGRESION LINEAR
#Modelo estadístico. Analiza la relación entre una variable dependiente y una o más variables independientes. 
#Se utiliza este analisis para predecir el valor de una variable (dependiente) basandose en el valor de otra u otras (independiente)

#EJERCICIO 14

#Importa el dataset datos_J.csv

datos_J <- read.csv("C:/Users/au721330/OneDrive - Aarhus Universitet/Desktop/Curso_Introducción_Rprogram/Introducción_R/MODULO F. ANALISIS ESTADÍSTICO/datos_J.csv")


modelo_linear <- lm(indice_similitud ~ Proximidad, data = datos_J)

summary(modelo_linear)

#usa ggplot para plotear los resultados y ver la linea de regression

modelo_linear = ggplot(datos_J, aes(x = indice_similitud, y = Proximidad)) + ggtitle("no") + geom_point() + geom_smooth(method = "lm", se = FALSE, color = "red") + theme_minimal() 

modelo_linear

#En general, la pendiente negativa dice que hay una relación negativa entre proximidad y similitud. 
#Es decir, Cuando aumenta la proximidad, la similitud disminuye pero esto puede ser debido al azar por el pvalue alto



###EJERCICIO EXTRA ####

#EJERCICIO 15

#ejercicio extraido de https://github.com/Mcotsar/Salmorejo_project2019

#Tenemos un par de recetas de diferentes salmorejos procedentes de distintos puntos de España y queremos conocer su origen y difusión

#Importa el dataset datos_K en el MODULO F. ANALISIS ESTADÍSTICO
# Se trata de una base de datos de recetas donde 0 es ausencia y 1 presencia

#Carga las librerias para hacer el análisis, si no instala 

library(vegan)
library(ape)
library(ggplot2)

#carga la base de datos

tree <- read.csv("C:/Users/au721330/OneDrive - Aarhus Universitet/Desktop/Curso_Introducción_Rprogram/Introducción_R/MODULO F. ANALISIS ESTADÍSTICO/datos_K.csv")


#se convierte en matrix
rownames(tree)=tree[,1]
tree = tree[,2:ncol(tree)]


#crear el arbol
tree2 = vegdist(tree, method="jaccard")

hclust(tree2)

#plot

plot(hclust(tree2))

plot(as.phylo(hclust(tree2)), edge.color = "slategrey",edge.width = 2, edge.lty = 2,label.offset = 0.02,tip.color = "dodgerblue4", main= "Types of salmorejo")







