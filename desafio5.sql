SELECT
	m.name AS cancao,
    COUNT(rh.music_id) AS reproducoes
FROM SpotifyClone.reprodution_history AS rh
INNER JOIN SpotifyClone.musics AS m
ON m.music_id = rh.music_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;