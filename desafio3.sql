SELECT
	u.name AS usuario,
  COUNT(h.music_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(m.duration_seconds) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.reprodution_history AS h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.musics AS m
ON h.music_id = m.music_id
GROUP BY usuario;