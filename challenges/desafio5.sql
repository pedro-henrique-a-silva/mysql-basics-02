SELECT 
	m.musica_name AS "cancao", 
  COUNT(hs.musica_id) AS "reproducoes"
FROM historico_musicas AS hs
INNER JOIN musicas AS m ON hs.musica_id = m.musica_id
GROUP BY m.musica_name
ORDER BY reproducoes DESC, cancao
LIMIT 2;