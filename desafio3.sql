SELECT usuarios.usuario AS usuario,
COUNT(reproducoes.musica_id) AS qt_de_musicas_ouvidas,
ROUND(SUM(songs.duracao_segundos) / 60, 2) AS total_minutos 
FROM SpotifyClone.historico_de_reproducoes AS reproducoes

INNER JOIN SpotifyClone.usuario AS usuarios
ON usuarios.usuario_id = reproducoes.usuario_id

INNER JOIN SpotifyClone.musicas AS songs
ON songs.musica_id = reproducoes.musica_id

GROUP BY usuarios.usuario_id
ORDER BY usuarios.usuario;
