SELECT 
musicas.musica AS nome,
COUNT(reproducoes.musica_id) AS reproducoes
FROM 
SpotifyClone.musicas AS musicas
INNER JOIN SpotifyClone.historico_de_reproducoes AS reproducoes 
ON reproducoes.musica_id = musicas.musica_id
INNER JOIN SpotifyClone.usuario AS usuarios
ON usuarios.usuario_id = reproducoes.usuario_id
WHERE usuarios.plano_id = 1 OR usuarios.plano_id = 4
GROUP BY musicas.musica
ORDER BY musicas.musica;
