SELECT
	m.name AS nome,
	COUNT(rh.music_id) AS reproducoes
FROM SpotifyClone.reprodution_history AS rh
INNER JOIN SpotifyClone.musics AS m
ON rh.music_id = m.music_id
INNER JOIN (
	SELECT user_id, plan_id FROM SpotifyClone.users
	WHERE plan_id IN(1,4)
) AS td
ON td.user_id = rh.user_id
GROUP BY nome
ORDER BY nome;