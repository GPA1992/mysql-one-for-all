SELECT 
COUNT(reproducoes.musica_id) AS quantidade_musicas_no_historico
FROM 
SpotifyClone.usuario AS usuarios 
INNER JOIN SpotifyClone.historico_de_reproducoes AS reproducoes 
ON reproducoes.usuario_id = usuarios.usuario_id
WHERE usuarios.usuario_id = 1;
