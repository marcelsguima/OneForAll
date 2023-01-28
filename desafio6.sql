SELECT MIN(p.`value`) AS faturamento_minimo,
MAX(p.`value`) AS faturamento_maximo,
ROUND(AVG(p.`value`), 2) AS faturamento_medio,
SUM(p.`value`) AS faturamento_total
FROM SpotifyClone.users AS u
LEFT JOIN SpotifyClone.plans AS p 
ON u.plan_id = p.plan_id;