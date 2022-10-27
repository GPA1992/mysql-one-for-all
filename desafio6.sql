SELECT ROUND(MIN(planos.valor_plano),2) AS faturamento_minimo,
ROUND(MAX(planos.valor_plano),2) AS faturamento_maximo,
ROUND(AVG(planos.valor_plano),2) AS faturamento_medio,
ROUND(SUM(planos.valor_plano),2) AS faturamento_total
FROM SpotifyClone.plano AS planos
INNER JOIN
SpotifyClone.usuario AS usuarios 
ON planos.plano_id = usuarios.plano_id;
