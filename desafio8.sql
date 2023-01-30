SELECT ar.artist AS 'artista',
al.album AS 'album'
FROM SpotifyClone.artist AS ar
LEFT JOIN SpotifyClone.album AS al
ON ar.artist_id = al.artist_id
WHERE ar.artist = 'Elis Regina'
ORDER BY al.album;