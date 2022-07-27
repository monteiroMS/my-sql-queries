SELECT
	MIN(p.value) AS faturamento_minimo,
	MAX(p.value) AS faturamento_maximo,
	ROUND(AVG(td.value), 2) AS faturamento_medio,
	SUM(td.value) AS faturamento_total
FROM SpotifyClone.plans AS p
INNER JOIN (
	SELECT
		u.name AS usuario,
		p.name AS plan,
		p.value AS value
	FROM SpotifyClone.users AS u
	INNER JOIN SpotifyClone.plans AS p
	ON u.plan_id = p.plan_id
) AS td
ON p.name = td.plan;