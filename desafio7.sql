SELECT
	ar.name AS artista,
    al.name AS album,
    td.seguidores AS seguidores
FROM SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.albums AS al
ON ar.artist_id = al.artist_id
INNER JOIN (
	SELECT
		COUNT(f.user_id) AS seguidores,
		ar.name AS artista
	FROM SpotifyClone.artist_follower AS f
	INNER JOIN SpotifyClone.artists AS ar
	ON f.artist_id = ar.artist_id
	GROUP BY artista
) AS td
ON td.artista = ar.name
ORDER BY seguidores DESC, artista, album;