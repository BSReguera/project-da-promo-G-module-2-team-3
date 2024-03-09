-- Proyecto -Equipo 3 - Tablas SQL

<<<<<<< HEAD
CREATE SCHEMA cinemextract_bho;
USE cinemextract_bho;
=======
>>>>>>> 0125e3160438bb60012a4f0f36a7d71eb06611d1

-- Tabla Peliculas -- 
CREATE TABLE Peliculas (
	id_pelicula VARCHAR(10) PRIMARY KEY,
    genero VARCHAR(10),
    tipo VARCHAR(10),
    nombre_pelicula VARCHAR(255),
    año_estreno YEAR,
    mes_estreno TINYINT
 );

-- Tabla Detalles Peliculas -- 
CREATE TABLE Detalles_Peliculas (
	id_pelicula VARCHAR(10),
    puntuacion_IMDB VARCHAR(10),
    puntuacion_Rotten_Tomatoes VARCHAR(10),
    director TEXT,
    guionistas TEXT,
    argumento TEXT, 
    duracion_minutos TIME, 
    CONSTRAINT `fk_id_pelicula`
    FOREIGN KEY (id_PELICULA) REFERENCES Peliculas(id_pelicula)
);

-- Tabla Actores -- 
CREATE TABLE Actores (
	id_pelicula VARCHAR(10),
    nombre_actor VARCHAR(255),
    año_nacimiento YEAR,
    titulos TEXT,
    rol TEXT,
    premios TEXT,
<<<<<<< HEAD
    CONSTRAINT `fk_id_pelicula_PELICULAS`
=======
    CONSTRAINT `fk_id_pelicula`
>>>>>>> 0125e3160438bb60012a4f0f36a7d71eb06611d1
    FOREIGN KEY (id_PELICULA) REFERENCES Peliculas(id_pelicula)
);

LOAD DATA INFILE 'proyecto_json_generos/accion.csv' 
INTO TABLE peliculas
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; -- Ignora la primera fila si es una fila de encabezado
