## Proyecto CinemExtract: Explorando el Séptimo Arte a través de Datos y Tecnología

## INDICE
1. [Introducción](#1-introducción)
2. [Documentación](#2-documentación)
3. [Tecnologías utilizadas](#3-tecnolgias-utilizadas)
4. [Preguntas frecuentes](#4-preguntas-frecuentes)
5. [Informacion de contacto](#5-informacion-de-contacto)
6. [Agradecimientos](#6-agradecimientos)

# 1. INTRODUCCION: 
¡Bienvenidos al proyecto CinemExtract! 

El equipo de la empresa Cinemetrix compuesto por: Beatriz Sánchez, Isabel Correal, Maite Barrera y María Crespo. Ha sido el encargado de realizar este maravilloso proyecto Cinemextract. 

La plataforma de streaming BHO busca mejorar la calidad de su contenido y la satisfacción de sus usuarios mediante la aplicación de técnicas de análisis de datos. 
El proyecto CinemExtract tiene como objetivo identificar las películas y cortometrajes más populares y mejor valorados desde el año 2000 hasta la fecha, utilizando diversas fuentes de datos y tecnologías. Esto permitirá a BHO tomar decisiones informadas sobre qué contenido promocionar y destacar en su plataforma.


# 2. DOCUMENTACION:
La documentación detallada del proyecto se encuentra en el repositorio, estructurado por fases:

- Fase 1: Extracción de Datos de API de MoviesDataset. - Uso de API (MoviesDataset), archivos json, jupyter notebook y csv.
- Fase 2: Extracción de Detalles de Películas con Selenium - Uso de Selenium, archivos json, jupyter notebook y csv.
- Fase 3: Extracción de Detalles de Actores con Selenium - Uso de Selenium, jupyter notebook y csv
- Fase 4: Extracción de Tablas de los Premios Oscar con Beautiful Soup - Uso de Beautful soup, archivos json, jupyter notebook y csv.
- Fase 5: Creación de una Base de Datos - Uso de Base de datos en SQL y myworkbench.
- Fase 6: Inserción de Datos en la Base de Datos - Uso de Base de datos en SQL, myworkbench, csv y jupyter notebook.
- Fase 7: Realización de Consultas para Obtener Información - Uso de Base de datos en SQL y myworkbench.


# 3. TECNOLOGIAS UTILIZADAS: 

## API
La API de MoviesDataset se utiliza para extraer información sobre películas, como títulos, géneros y años de lanzamiento. Además, se utilizan APIs de sitios web como IMDB y Rottem Tomatoes para obtener información detallada sobre películas, como puntuaciones, directores y actores. Estas APIs se integran con Selenium para automatizar la extracción de datos de las páginas web correspondientes.

## Selenium
Se utiliza Selenium para la extracción de detalles de películas y actores desde sitios web como IMDB y Rotten Tomatoes. Selenium permite la automatización del navegador web, lo que facilita la navegación a través de las páginas web y la extracción de información específica, como puntuaciones, directores, actores, etc.

## Beautiful Soup
Se utiliza Beautiful Soup para extraer información relevante de las tablas de los Premios Oscar desde 2000. Beautiful Soup es una biblioteca de Python que permite analizar y extraer datos de archivos HTML y XML. En este caso, se utiliza para analizar el contenido de las tablas HTML de los Premios Oscar y extraer información como la fecha de la ceremonia, mejor película, mejor director, etc.

## HTML
El lenguaje HTML se utiliza para estructurar el contenido de las páginas web que se analizan con Selenium y se extraen con Beautiful Soup. Además, se puede utilizar HTML para generar informes o visualizaciones de datos.

## CSV
Se utiliza el formato CSV (Comma Separated Values) para almacenar datos de manera tabular, como las listas de películas extraídas de la API de MoviesDataset. Este formato es fácil de leer y escribir, y es compatible con una amplia variedad de software, lo que lo hace ideal para el intercambio de datos.

## JSON
Se utiliza el formato JSON (JavaScript Object Notation) para almacenar y estructurar datos de manera jerárquica, como la información detallada de las películas y actores extraídos con Selenium. JSON es fácilmente legible por humanos y también es fácil de analizar y generar en Python, lo que lo hace útil para el intercambio de datos entre diferentes sistemas y aplicaciones.

## PYTHON
Python es el lenguaje de programación principal utilizado en todo el proyecto. Se utiliza para escribir scripts que realizan la extracción, procesamiento, análisis y almacenamiento de datos. Python ofrece una amplia gama de bibliotecas y herramientas que facilitan el desarrollo de aplicaciones de análisis de datos y web scraping, lo que lo convierte en una opción popular para proyectos como CinemExtract.

## SQL
Se utiliza SQL para la creación de una base de datos que almacene toda la información recopilada durante el proyecto. SQL se encarga de definir la estructura de la base de datos, crear tablas y establecer conexiones entre ellas. Además, se utilizan consultas para la resolución de preguntas.


# 4. PREGUNTAS FRECUENTES:
- ¿Cuáles son las principaLes tecnologías utilizadas en el proyecto? Las principales tecnologías utilizadas son API, Selenium, Beautiful Soup, HTML, CSV, JSON, Jupyter notebooks y Python.
- ¿Qué información se extrae de las películas y cortometrajes? Se extrae información como el título, género, año de estreno, director, actores, puntuaciones, entre otros.
- ¿Cómo se organiza la base de datos? La base de datos se estructura de acuerdo a las tablas necesarias para almacenar la información de películas, actores, premios, etc.


# 5. INFORMACION DE CONTACTO: 
Para cualquier consulta o colaboración, puedes contactarnos a través de:
- Página web: www.cinemetrics.com 
- Correo electrónico: hola@cinemetrics.com
- Teléfono: +91 527 8903
- Instagram: @cinemetrics

# 6. AGRADECIMIENTOS: 

Queremos expresar nuestro agradecimiento a todo el equipo involucrado en el proyecto, así como a nuestras compañeras por su apoyo y ayuda en caso de consulta, en especial a Marina Escobar (GitHub:marinaescobar) por su apoyo en todo el proceso del desarollo del código. También, agradecemos a nuestros profesores César Valle y Carla Álvarez López por su apoyo ante la resolución de conflictos en el código y en el aspecto teórico.


¡Gracias a todos por hacer posible este proyecto y por contribuir al éxito de nuestro equipo!