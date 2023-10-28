CREATE TABLE SpotifyClone.favoritos (
	usuario_id INT ,
  musica_id INT NOT NULL,
  FOREIGN KEY (musica_id) REFERENCES musicas(musica_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  PRIMARY KEY (usuario_id, musica_id)
);

INSERT INTO SpotifyClone.favoritos (usuario_id, musica_id)
VALUES
  (1,	3),
  (1,	6),
  (1,	10),
  (2,	4),
  (3,	1),
  (3,	3),
  (4,	7),
  (4,	4),
  (5,	10),
  (5,	2),
  (8,	4),
  (9,	7),
  (10,	3);


