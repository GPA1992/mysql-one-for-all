SELECT 
artistas.nome AS artista,
alb.album AS album
FROM 
SpotifyClone.artistas AS artistas 
INNER JOIN 
SpotifyClone.albuns AS alb
ON alb.artista_id = artistas.artista_id 
WHERE artistas.nome = 'Elis Regina'
GROUP BY artistas.nome, alb.album
ORDER BY artistas.nome, alb.album;
