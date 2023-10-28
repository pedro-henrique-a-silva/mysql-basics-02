SELECT
    al.album_name AS "album",
    COUNT(f.musica_id) AS "favoritadas"
FROM albuns AS al
INNER JOIN musicas AS m ON m.album_id = al.album_id
INNER JOIN favoritos AS f ON m.musica_id = f.musica_id
GROUP BY al.album_name
ORDER BY favoritadas DESC, album
LIMIT 3;