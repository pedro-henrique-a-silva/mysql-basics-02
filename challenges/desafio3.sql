SELECT 
	u.usuario_name AS "pessoa_usuaria",
	COUNT(m.musica_id) AS "musicas_ouvidas",
    ROUND(SUM(m.duracao_segundos) / 60, 2) AS "total_minutos"
FROM usuarios AS u
INNER JOIN historico_musicas AS hs ON u.usuario_id = hs.usuario_id
INNER JOIN musicas as m ON hs.musica_id = m.musica_id
GROUP BY u.usuario_name
ORDER BY u.usuario_name;