SELECT 
artistas.nome AS artista,
alb.album AS album,
COUNT(seguidores.artista_id) AS seguidores 
FROM 
SpotifyClone.artistas AS artistas 
INNER JOIN 
SpotifyClone.albuns AS alb
ON alb.artista_id = artistas.artista_id
INNER JOIN 
SpotifyClone.seguindo_artistas AS seguidores
ON artistas.artista_id = seguidores.artista_id
GROUP BY artistas.nome, alb.album
ORDER BY seguidores DESC, artistas.nome, alb.album;
