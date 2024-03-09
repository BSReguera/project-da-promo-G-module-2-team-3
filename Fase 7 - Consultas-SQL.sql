-- PROYECTO CINEMETRICS - MODULO 2 - EQUIPO 3 - CONSULTAS

-- 1. ¿Qué géneros han recibido más premios Óscar?
SELECT `p`.`genero`, COUNT(`mejor_pelicula`) AS "Total_premios"
	FROM `Peliculas` AS `p`
	JOIN  `premios` AS `pr`
		ON `p`.`id_pelicula`= `pr`.`id_pelicula`
    WHERE `pr`.`mejor_pelicula` IS NOT NULL
	GROUP BY `p`.`genero`
	ORDER BY "Total_premios" DESC;

-- 2. ¿Qué género es el mejor valorado en IMDB?
SELECT `p`.`genero`, AVG(`dp`.`puntuacion_IMDB`) AS "IMDB_rating"
	FROM `Peliculas` AS `p`
	INNER JOIN `detalle_peliculas` AS `dp`
		ON `p`.`id_pelicula` = `dp`.`id_pelicula`
    WHERE `dp`.`puntuacion_IMDB` IS NOT NULL
	GROUP BY `genero`
	ORDER BY "IMDB_rating" DESC;

-- 3. ¿En que año se estrenaron más películas?
SELECT `Año_estreno`, COUNT(*) AS "Total_peliculas"
	FROM `Peliculas` AS `p`
	WHERE `tipo` = 'movie'
	GROUP BY `Año_estreno`
	ORDER BY "Total_peliculas" DESC
    LIMIT 1;

-- 4. ¿En que año se estrenaron mas cortos?
SELECT `Año_estreno`, COUNT(*) AS "Total_cortos"
	FROM `Peliculas` AS `p`
	WHERE `tipo` = 'corto'
	GROUP BY `Año_estreno`
	ORDER BY "Total_cortos" DESC
    LIMIT 1;
    
-- 5. ¿Cuál es el mejor corto valorada en IMDB?
SELECT `titulo`, `puntuacion_IMDB`
	FROM `Peliculas`AS `p`
	JOIN `Detalles_Peliculas` AS `dp`
		ON `p`.`id_pelicula` = `dp`.`id_pelicula`
	WHERE `tipo` = 'short'
	ORDER BY `puntuacion_IMDB` DESC
	LIMIT 1;
    
-- 6. ¿Cuál es la película mejor valorada en IMDB?
SELECT `titulo`, `puntuacion_IMDB`
	FROM `Peliculas`AS `p`
	JOIN `Detalles_Peliculas` AS `dp`
		ON `p`.`id_pelicula` = `dp`.`id_pelicula`
	WHERE `tipo` = 'movie'
	ORDER BY `puntuacion_IMDB` DESC
	LIMIT 1;
    
-- 7. ¿Qué actor/actriz ha recibido más premios?
SELECT `Nombre_actor`, COUNT(*) as "total_premios"
	FROM `Premios`AS `pR`
	WHERE `Mejor_actor` IS NOT NULL OR `Mejor_actriz` IS NOT NULL
	GROUP BY `Nombre_actor`
	ORDER BY "total_premios" DESC
	LIMIT 1;
    
-- 8. ¿Hay algun actor/actriz que haya recibido más de un premio Óscar?
SELECT `Nombre_actor`
	FROM `Premios` AS `pr`
	WHERE `Mejor_actor` LIKE '%Premio Oscar%' OR `Mejor_actriz` LIKE '%Premio Oscar%'
	GROUP BY `Nombre_actor`
	HAVING COUNT(*) > 1;

-- 9. ¿Qué género es el mejor valorado en ROTTEN?
SELECT `Genero`, AVG(`Puntuacion_Rottem`) as "promedio_rottem"
	FROM `Detalles_Peliculas`
	WHERE `Puntuacion_Rottem` IS NOT NULL
	GROUP BY `Genero`
	ORDER BY "promedio_rottem" DESC;

-- 10. ¿Cuál es el mejor corto serie valorada en Rottem?
SELECT `titulo`, `puntuacion_Rottem`
	FROM `Peliculas`AS `p`
	JOIN `Detalles_Peliculas` AS `dp`
		ON `p`.`id_pelicula` = `dp`.`id_pelicula`
	WHERE `tipo` = 'short'
	ORDER BY `puntuacion_Rottem` DESC
	LIMIT 1;

-- 11. ¿Cuál es la película mejor valorada en Rottem?
SELECT `titulo`, `puntuacion_Rottem`
	FROM `Peliculas`AS `p`
	JOIN `Detalles_Peliculas` AS `dp`
		ON `p`.`id_pelicula` = `dp`.`id_pelicula`
	WHERE `tipo` = 'movie'
	ORDER BY `puntuacion_Rottem` DESC
	LIMIT 1;