SELECT u.user_name AS usuario,
COUNT(h.music_id) AS qt_de_musicas_ouvidas,
SUM(round(m.duration/ 60, 2)) AS total_minutos
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history_ AS h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.music AS m
ON h.music_id = m.music_id
GROUP BY u.user_name
ORDER BY u.user_name;