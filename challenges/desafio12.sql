SELECT 
	a.artista_name AS "artista",
  CASE
	  WHEN (COUNT(f.musica_id) >= 5) THEN "A"
      WHEN (COUNT(f.musica_id) BETWEEN 3 AND 4) THEN "B"
      WHEN (COUNT(f.musica_id) BETWEEN 1 AND 2) THEN "C"
	  ELSE '-'
	END AS "ranking"
FROM artistas AS a
LEFT JOIN musicas AS m ON a.artista_id = m.artista_id
LEFT JOIN favoritos AS f ON m.musica_id = f.musica_id
GROUP BY a.artista_name
ORDER BY COUNT(f.musica_id) DESC, a.artista_name;