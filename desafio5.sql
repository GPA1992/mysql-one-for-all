SELECT 
songs.musica AS cancao,
COUNT(historico.musica_id) AS reproducoes

FROM SpotifyClone.musicas  AS songs

INNER JOIN SpotifyClone.historico_de_reproducoes AS historico
ON historico.musica_id = songs.musica_id
GROUP BY historico.musica_id
ORDER BY reproducoes DESC, songs.musica
LIMIT 2;
