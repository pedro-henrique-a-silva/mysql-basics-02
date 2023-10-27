SELECT COUNT(DISTINCT m.musica_name) AS cancoes,
	COUNT(DISTINCT a.artista_id) AS artistas,
    COUNT(DISTINCT al.album_name) AS albuns 
FROM artistas AS a
INNER JOIN musicas AS m ON a.artista_id = m.artista_id
INNER JOIN albuns AS al ON al.artista_id = m.artista_id;