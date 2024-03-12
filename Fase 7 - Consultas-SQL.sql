-- PROYECTO CINEMETRICS - MODULO 2 - EQUIPO 3 - CONSULTAS

-- 1. ¿Qué géneros han recibido más premios Óscar?
SELECT `p`.`genero`, COUNT(`pr`.`mejor_pelicula`) AS "Total_premios"
	FROM `peliculas` AS `p`
	INNER JOIN  `premios` AS `pr`
		ON `p`.`id_pelicula`= `pr`.`id_pelicula`
    WHERE `pr`.`mejor_pelicula` IS NOT NULL
	GROUP BY `p`.`genero`
    HAVING COUNT(`pr`.`mejor_pelicula`) = (SELECT MAX(`Total_premios`)
												FROM (SELECT COUNT(`pr`.`mejor_pelicula`) AS "Total_premios"
														FROM `peliculas` AS `p`
														INNER JOIN `premios` AS `pr`
															ON `p`.`id_pelicula` = `pr`.`id_pelicula`
														WHERE `pr`.`mejor_pelicula` IS NOT NULL
														GROUP BY `p`.`genero`) AS `subquery`);
                                                        
-- 2. ¿Qué género es el mejor valorado en IMDB?
SELECT `p`.`genero`, ROUND(AVG(`dp`.`puntuacion_IMDB`), 2) AS "IMDB_rating"
	FROM `peliculas` AS `p`
	INNER JOIN `detalles_peliculas` AS `dp`
		ON `p`.`id_pelicula` = `dp`.`id_pelicula`
    WHERE `dp`.`puntuacion_IMDB` IS NOT NULL
	GROUP BY `genero`
	ORDER BY "IMDB_rating" DESC
    LIMIT 1;

-- 3. ¿En que año se estrenaron más películas?
SELECT `Año_estreno`, COUNT(*) AS "Total_peliculas"
	FROM `peliculas` AS `p`
	WHERE `tipo` = 'movie'
	GROUP BY `Año_estreno`
	ORDER BY "Total_peliculas" DESC
    LIMIT 1;

-- 4. ¿En que año se estrenaron mas cortos?
SELECT `Año_estreno`, COUNT(*) AS "Total_cortos"
	FROM `peliculas` AS `p`
	WHERE `tipo` = 'short'
	GROUP BY `Año_estreno`
	ORDER BY "Total_cortos" DESC
    LIMIT 1;
    
-- 5. ¿Cuál es el mejor corto valorada en IMDB?
SELECT `titulo`, `puntuacion_IMDB`
	FROM `peliculas`AS `p`
	INNER JOIN `detalles_peliculas` AS `dp`
		ON `p`.`id_pelicula` = `dp`.`id_pelicula`
	WHERE `tipo` = 'short'
	ORDER BY `puntuacion_IMDB` DESC
	LIMIT 1;
    
-- 6. ¿Cuál es la película mejor valorada en IMDB?
SELECT `titulo`, `puntuacion_IMDB`
	FROM `Peliculas`AS `p`
	INNER JOIN `Detalles_Peliculas` AS `dp`
		ON `p`.`id_pelicula` = `dp`.`id_pelicula`
	WHERE `tipo` = 'movie'
	ORDER BY `puntuacion_IMDB` DESC
	LIMIT 1;
    
-- 7. ¿Qué actor/actriz ha recibido más premios?
SELECT `a`.`Nombre_actor`, COUNT(*) as "total_premios"
	FROM `actores`AS `a`
    INNER JOIN `premios`AS `pr`
		ON `a`.`id_actor` = `pr`.`id_actor`
	WHERE `Mejor_actor` IS NOT NULL OR `Mejor_actriz` IS NOT NULL
	GROUP BY `a`.`Nombre_actor`
	ORDER BY COUNT(*) DESC
	LIMIT 1;
    
-- 8. ¿Hay algun actor/actriz que haya recibido más de un premio Óscar?
SELECT `a`.`nombre_actor`, COUNT(`o`.`id_actor`) AS "Numero_Oscars"
	FROM `premios` AS `o`
	INNER JOIN `actores` AS `a`
		ON `a`.`id_actor` = `o`.`id_actor`
	GROUP BY `o`.`id_actor`
	HAVING COUNT(`o`.`id_actor`) > 1
UNION
SELECT `a`.`nombre_actor`, COUNT(`o`.`id_actor`) AS "Numero_Oscars"
	FROM `actores` AS `a`
	INNER JOIN `premios` AS `o`
		ON `a`.`id_actor` = `o`.`id_actriz`
	GROUP BY `o`.`id_actriz`
	HAVING COUNT(`o`.`id_actor`) > 1;

-- 9. ¿Qué género es el mejor valorado en Rottem?
SELECT `genero`, ROUND(AVG(`Puntuacion_Rottem`), 2) as "promedio_rottem"
	FROM `detalles_peliculas`
	WHERE `Puntuacion_Rottem` IS NOT NULL
	GROUP BY `genero`
	ORDER BY "promedio_rottem" DESC
    LIMIT 1;

-- 10. ¿Cuál es el mejor corto serie valorada en Rottem?
SELECT `titulo`, `puntuacion_Rottem`
	FROM `peliculas`AS `p`
	JOIN `detalles_peliculas` AS `dp`
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