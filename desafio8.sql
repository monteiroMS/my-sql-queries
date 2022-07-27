SELECT
	ar.name AS artista,
    td.name AS album
FROM SpotifyClone.artists AS ar
INNER JOIN (
	SELECT artist_id, name FROM SpotifyClone.albums WHERE artist_id = 1
) AS td
ON ar.artist_id = td.artist_id;