SELECT ar.artist AS artista,
al.album AS album,
COUNT(fl.artist_id) AS seguidores
FROM SpotifyClone.artist AS ar
LEFT JOIN SpotifyClone.album AS al 
ON ar.artist_id = al.artist_id
LEFT JOIN SpotifyClone.follow AS fl 
ON ar.artist_id = fl.artist_id
GROUP BY ar.artist, al.album
ORDER BY seguidores DESC, ar.artist, al.album;
