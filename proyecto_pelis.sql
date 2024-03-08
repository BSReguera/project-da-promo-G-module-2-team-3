-- Proyecto -Equipo 3 - Tablas SQL
		 -- Tabla Detalles Peliculas -- 
CREATE SCHEMA proyecto_pelis;

USE proyecto_pelis;

-- Tabla Peliculas -- 
CREATE TABLE Peliculas (
	id_pelicula VARCHAR(10) NOT NULL,
    Genero VARCHAR(10),
	Titulo VARCHAR(255),
    Tipo VARCHAR(10), 
    Año_estreno VARCHAR(10),
    Mes_estreno VARCHAR(10),
    PRIMARY KEY (id_pelicula)
 );

USE proyecto_pelis;

CREATE TABLE IF NOT EXISTS Detalles_Peliculas (
	id_pelicula VARCHAR(10) NOT NULL,
    Genero VARCHAR(10),
    Direccion VARCHAR(100),
    Guion VARCHAR(100),
    Puntuacion_IMDB VARCHAR(10),
    Puntuacion_Rottem VARCHAR(10),
    Duracion VARCHAR(20),
    Argumento VARCHAR(255),
        FOREIGN KEY (id_pelicula) REFERENCES Peliculas (id_pelicula)
);      

-- Tabla Actores -- 

USE proyecto_pelis;

CREATE TABLE IF NOT EXISTS Actores (
	id_actor VARCHAR(100) NOT NULL,
    id_pelicula VARCHAR(10) NOT NULL,
    Nombre_actor VARCHAR(255),
    Año_nacimiento VARCHAR(10),
    Profesion VARCHAR(255),
    Conocido_por VARCHAR(255),
    PRIMARY KEY (id_actor),
	FOREIGN KEY (id_pelicula) REFERENCES Peliculas(id_pelicula)
);

USE proyecto_pelis;

-- tabla premios --

CREATE TABLE IF NOT EXISTS Premios (
	id_premio  INT NOT NULL AUTO_INCREMENT,
    Ceremonia VARCHAR (20),
    Mejor_pelicula VARCHAR (255),
    id_pelicula VARCHAR (10) NOT NULL, 
    Mejor_director VARCHAR (255), 
    Mejor_actor VARCHAR (255),
    Mejor_actriz VARCHAR (255),
    id_actor VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_premio),
    FOREIGN KEY (id_actor) REFERENCES Actores(id_actor),
    FOREIGN KEY (id_pelicula) REFERENCES Peliculas(id_pelicula)
);

USE proyecto_pelis;

CREATE TABLE IF NOT EXISTS Peli_actor_premio (
id_pelicula VARCHAR (10) NOT NULL,
FOREIGN KEY (id_pelicula) REFERENCES Detalles_Peliculas(id_pelicula),
id_actor VARCHAR (100) NOT NULL,
FOREIGN KEY (id_actor) REFERENCES Actores(id_actor),
id_premio INT NOT NULL AUTO_INCREMENT,
FOREIGN KEY (id_premio) REFERENCES Premios(id_premio)
);


LOAD DATA INFILE 'proyecto_json_generos/accion.csv' 
INTO TABLE peliculas
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; -- Ignora la primera fila si es una fila de encabezado
