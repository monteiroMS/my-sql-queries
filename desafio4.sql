SELECT
	u.name AS usuario,
	IF(YEAR(MAX(rh.reprodution_date)) = '2021', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.reprodution_history AS rh
INNER JOIN SpotifyClone.users AS u
ON u.user_id = rh.user_id
GROUP BY usuario;