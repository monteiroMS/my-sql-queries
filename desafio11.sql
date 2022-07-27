SELECT
	name AS nome_musica,
	CASE
		WHEN name LIKE '%Streets' THEN REPLACE(name, 'Streets', 'Code Review')
		WHEN name LIKE '%Her Own' THEN REPLACE(name, 'Her Own', 'Trybe')
		WHEN name LIKE '%Inner Fire' THEN REPLACE(name, 'Inner Fire', 'Project')
    WHEN name LIKE '%Silly' THEN REPLACE(name, 'Silly', 'Nice')
    WHEN name LIKE '%Circus' THEN REPLACE(name, 'Circus', 'Pull Request')
		ELSE 'Something went wrong'
  END AS novo_nome
FROM SpotifyClone.musics
WHERE
	name LIKE '%Streets'
    OR name LIKE '%Her Own'
    OR name LIKE '%Inner Fire'
    OR name LIKE '%Silly'
    OR name LIKE '%Circus'
ORDER BY nome_musica;