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
    Año_estreno VARCHAR(12),
    Mes_estreno VARCHAR(12),
    PRIMARY KEY (id_pelicula,Genero)
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

ALTER TABLE `Detalles_Peliculas`
MODIFY COLUMN `Argumento` 
VARCHAR(500);

-- Tabla Actores -- 

USE proyecto_pelis;

CREATE TABLE IF NOT EXISTS Actores (
	id_actor VARCHAR(100) NOT NULL,
    Nombre_actor VARCHAR(255),
    Año_nacimiento VARCHAR(10),
    Profesion VARCHAR(255),
    Conocido_por VARCHAR(255),
    PRIMARY KEY (id_actor)
);



USE proyecto_pelis;

-- tabla premios --

CREATE TABLE IF NOT EXISTS Premios (
	id_premio  INT NOT NULL AUTO_INCREMENT,
    Ceremonia VARCHAR (20),
    id_pelicula VARCHAR (10) NOT NULL,
    Mejor_pelicula VARCHAR (255),
    Mejor_director VARCHAR (255), 
    id_actor VARCHAR (100) NOT NULL,
    Mejor_actor VARCHAR (255),
    id_actriz VARCHAR (100) NOT NULL,
    Mejor_actriz VARCHAR (255),
    PRIMARY KEY (id_premio)
);

USE proyecto_pelis;

CREATE TABLE IF NOT EXISTS Peli_actor (
id_pelicula VARCHAR (10) NOT NULL,
id_actor VARCHAR (100) NOT NULL,
FOREIGN KEY (id_pelicula) REFERENCES Peliculas(id_pelicula),
FOREIGN KEY (id_actor) REFERENCES Actores(id_actor)
);

CREATE TABLE IF NOT EXISTS actor_premio (
id_actor VARCHAR (100) NOT NULL,
premio VARCHAR (100),
FOREIGN KEY (id_actor) REFERENCES Actores(id_actor)
);

DROP TABLE actor_premio;

ALTER TABLE `actor_premio`
ADD COLUMN `id_premio` INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE `actor_premio`
MODIFY COLUMN `premio` 
VARCHAR(500);
