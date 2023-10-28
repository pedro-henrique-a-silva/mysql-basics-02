SELECT
    CASE
	  WHEN (u.idade < 31) THEN "Até 30 anos"
      WHEN (u.idade BETWEEN 31 AND 60) THEN "Entre 31 e 60 anos"
	  WHEN (u.idade > 60) THEN "Maior de 60 anos" 
	END AS "faixa_etaria",
    COUNT(DISTINCT u.usuario_id) AS "total_pessoas_usuarias",
    COUNT(f.usuario_id) AS "total_favoritadas"
FROM usuarios u
LEFT JOIN favoritos f ON u.usuario_id = f.usuario_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;