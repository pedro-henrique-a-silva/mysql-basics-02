SELECT 
	u.usuario_name AS "pessoa_usuaria", 
  IF(MAX(hs.data_reproducao) >= "2021-01-01", 'Ativa', 'Inativa') AS "status_pessoa_usuaria" 
FROM historico_musicas AS hs
INNER JOIN usuarios AS u ON hs.usuario_id = u.usuario_id
GROUP BY u.usuario_name
ORDER BY u.usuario_name;