SELECT m.music AS cancao, 
COUNT(h.user_id) AS reproducoes
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history_ AS h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.music AS m
ON h.music_id = m.music_id
GROUP BY m.music
ORDER BY reproducoes DESC, m.music
LIMIT 2;