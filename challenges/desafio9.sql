SELECT
	COUNT(hs.usuario_id) AS "musicas_no_historico"
FROM usuarios AS u
INNER JOIN historico_musicas AS hs ON u.usuario_id = hs.usuario_id
WHERE u.usuario_name = "Barbara Liskov";