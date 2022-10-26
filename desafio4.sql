SELECT usuarios.usuario AS usuario,
IF((MAX(YEAR(reproducoes.data_reproducoes)) > 2020), 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuario AS usuarios
INNER JOIN SpotifyClone.historico_de_reproducoes AS reproducoes
ON reproducoes.usuario_id = usuarios.usuario_id
GROUP BY usuarios.usuario
ORDER BY usuarios.usuario;
