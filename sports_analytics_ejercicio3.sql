/*Realizar las siguientes consultas:
- Selecciona las victorias máximas y mínimas para cada equipo diferente en la tabla de seasons.*/
-- Este enunciado no lo he entendido. En la tabla seasons solo tenemos el identificador de la temporada y los años, no estos datos. 
-- He trabajado con la tabla stats interpretando que identificamos cada equipo con su team_id, y la temporada con su season_id. Si todos los equipos
-- han estado todas las temporadas, en esta tabla debería haber 150 registros (30 equipos + 5 temporadas). 
-- Estoy interpretando por victorias máximas y mínimas que ordenamos W con ORDER BY o ORDER BY DESC. 

SELECT team_id, season_id, W
	FROM stats
    ORDER BY W;

-- Obtén los primeros 10 resultados de la tabla de teams--

SELECT team
	FROM teams
    LIMIT 10; 
    
/*Atlanta Hawks
Boston Celtics
Brooklyn Nets
Chicago Bulls
Denver Nuggets
Detroit Pistons
Charlotte Hornets
Cleveland Cavaliers
Dallas Mavericks
Golden State Warriors*/

-- Selecciona todos los datos de los equipos que tengan entre 20 y 30 victorias de la tabla stats.--

SELECT *
	FROM stats
    WHERE W BETWEEN 20 AND 30;

-- Realiza un cuenteo de número total de equipos que existende la tabla teams.

SELECT COUNT(team)
	FROM teams;

-- Hay 30 equipos --

-- Calcula la media de todos los puntos conseguidos de la tabla stats--

SELECT AVG(PTS)
	FROM stats;

-- La media de puntos es 109.38--

-- Selecciona el máximo de victorias, máximo de puntos y la diferencia entre el máximo de puntos con la media de 
-- puntos como diferencia_media de la tabla stats.--

SELECT MAX(W), MAX(PTS),
(MAX(PTS) - 109.38) AS diferencia_media
	FROM stats; 

-- El máximo de victorias está en 67. El de puntos en 120.1. La diferencia entre el máximo de puntos y 
-- la media de puntos calculada en el ejercicio anterior está en 10.72 (redondeada).--