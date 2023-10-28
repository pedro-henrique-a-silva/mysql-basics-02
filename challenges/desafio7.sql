SELECT 
	a.artista_name AS "artista",
  al.album_name AS "album",
  COUNT(sa.usuario_id) AS "pessoas_seguidoras"
FROM artistas AS a
INNER JOIN albuns AS al ON a.artista_id = al.artista_id
INNER JOIN seguidores_artistas AS sa ON a.artista_id = sa.artista_id
GROUP BY a.artista_name, al.album_name
ORDER BY pessoas_seguidoras DESC, a.artista_name, al.album_name;