SELECT COUNT(*) AS cancoes, 
(SELECT COUNT(DISTINCT( artist_id)) FROM SpotifyClone.artist) AS artistas,
(SELECT COUNT(DISTINCT(album_id)) FROM SpotifyClone.album) AS albuns FROM SpotifyClone.music;