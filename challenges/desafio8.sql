SELECT
	a.artista_name AS "artista",
    al.album_name AS "album"
FROM artistas AS a
INNER JOIN albuns AS al ON a.artista_id = al.artista_id
WHERE a.artista_name = "Elis Regina";