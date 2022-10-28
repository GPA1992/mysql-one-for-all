SELECT
musicas.musica AS nome_musica,
CASE 
	WHEN musicas.musica LIKE '%Bard%' THEN REPLACE(musicas.musica, 'Bard', 'QA')
    WHEN musicas.musica LIKE '%Amar%' THEN REPLACE(musicas.musica, 'Amar', 'Code Review')
    WHEN musicas.musica LIKE '%Pais%' THEN REPLACE(musicas.musica, 'Pais', 'Pull Requests')
	WHEN musicas.musica LIKE '%SOUL%' THEN REPLACE(musicas.musica, 'SOUL', 'CODE')
	WHEN musicas.musica LIKE '%SUPERSTAR%' THEN REPLACE(musicas.musica, 'SUPERSTAR', 'SUPERDEV')
END AS novo_nome
FROM 
SpotifyClone.musicas AS musicas
GROUP BY musicas.musica
HAVING novo_nome IS NOT NULL
ORDER BY musicas.musica DESC;
