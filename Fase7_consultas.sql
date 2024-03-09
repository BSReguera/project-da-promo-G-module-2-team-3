-- PROYECTO CINEMETRICS - MODULO 2 - EQUIPO 3 - CONSULTAS

-- 1. ¿Qué géneros han recibido más premios Óscar?
SELECT `genero`, COUNT(`mejor_pelicula`) AS "Total_premios"
	FROM `peliculas` AS `p`
JOIN  `oscar` AS `o`
	ON `p`.`id_pelicula`= `o`.`id_pelicula`
	GROUP BY `Genero`
	ORDER BY "Total_premios" DESC;

-- 2. ¿Qué género es el mejor valorado en IMDB?
SELECT `genero`, AVG(`puntuacion_IMDB`) AS "IMDB_rating"
	FROM `detalle_peliculas` AS `dp`
	GROUP BY `genero`
	ORDER BY "IMDB_rating" DESC;

-- 3. ¿En que año se estrenaron más películas?
SELECT `Año_estreno`, COUNT(*) AS "Total_peliculas"
	FROM `peliculas` AS `p`
	WHERE `tipo` = `corto`
	GROUP BY `Año_estreno`
	ORDER BY "Total_peliculas" DESC
    LIMIT 1;

-- 4. En que año se estrenaron mas cortos?
SELECT `Año_estreno`, COUNT(*) AS "Total_cortos"
	FROM `peliculas` AS `p`
	WHERE `tipo` = `corto`
	GROUP BY `Año_estreno`
	ORDER BY "Total_cortos" DESC
    LIMIT 1;
    
-- 5. ¿Cuál es la mejor serie valorada en IMDB?

-- 6. ¿Cuál es la película mejor valorada en IMDB?

-- 7. ¿Qué actor/actriz ha recibido más premios?

-- 8. ¿Hay algun actor/actriz que haya recibido más de un premio Óscar?

-- 9. ¿Qué género es el mejor valorado en ROTTEN?
