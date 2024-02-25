-- Proyecto -Equipo 3 - Tablas SQL

-- Uso de tabla:
CREATE SCHEMA ;
USE 

-- Tabla Peliculas -- 
CREATE TABLE Peliculas (
	id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(10),
    nombre_pelicula VARCHAR(255),
    año_estreno YEAR,
    mes_estreno TINYINT;
    -- id_genero INT ??
    -- FOREIGN KEY (id_genero) REFERENCES generos(id_genero)??
);

-- Tabla Detalles Peliculas -- 
CREATE TABLE Detalles_Peliculas (
	id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_pelicula INT,
    puntuacion_IMDB FLOAT,
    puntuacion_Rotten_Tomatoes FLOAT,
    director VARCHAR(255) O TEXT,
    guionistas VARCHAR(255) O TEXT,
    argumento TEXT, 
    duracion_minutos TIME, 
    -- FOREIGN KEY (id_PELICULA) REFERENCES Peliculas(id_pelicula)??
);

-- Tabla Actores -- 
CREATE TABLE Actores (
	id_actor INT AUTO_INCREMENT PRIMARY KEY,
    id_pelicula PRIMARY KEY O SOLO INT, -- ??
    nombre_actor VARCHAR(255),
    año_nacimiento YEAR,
    conocido_por TEXT,
    ocupacion TEXT,
    premios TEXT,
);

-- Tabla Relacion Pelicula -- 
CREATE TABLE Relacion_Pelicula (
	id_relacion INT AUTO_INCREMENT PRIMARY KEY,
    id_pelicula INT,
    id_genero INT,
    -- FOREIGN KEY (id_pelicula) REFERENCES Peliculas(id_pelicula)??
    -- FOREIGN KEY (id_genero) REFERENCES generos(id_genero)??
);