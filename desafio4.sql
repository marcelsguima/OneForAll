SELECT u.user_name AS usuario,
IF (year(MAX(h.played)) > 2020,
'Usuário ativo',
'Usuário inativo') AS status_usuario
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history_ AS h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.music AS m
ON h.music_id = m.music_id
GROUP BY u.user_name
ORDER BY u.user_name;