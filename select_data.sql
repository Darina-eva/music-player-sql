SELECT name, duration FROM song
ORDER BY duration DESC LIMIT 1;

SELECT name FROM song
WHERE duration > 230;

SELECT name FROM collection
WHERE Extract(YEAR FROM "year") BETWEEN 2018 AND 2020;

SELECT name FROM artist
WHERE name NOT LIKE '% %';

SELECT name FROM song
WHERE name ILIKE '%my%' OR name ILIKE '%мой%';

SELECT genre.name, COUNT(artist_genre.artist_id) FROM genre 
JOIN artist_genre ON genre.id = artist_genre.genre_id
GROUP BY genre.name;

SELECT COUNT(*) FROM song
JOIN album ON song.album_id = album.id
WHERE Extract(YEAR FROM album.year) BETWEEN 2019 AND 2020;

SELECT album.name, AVG(song.duration) FROM song
JOIN album ON song.album_id = album.id
GROUP BY album.name;

SELECT artist.name FROM artist
JOIN artist_album ON artist.id = artist_album.artist_id
JOIN album ON album.id = artist_album.album_id
WHERE Extract(YEAR FROM album.year) != 2020;

SELECT DISTINCT collection.name FROM collection
JOIN collection_song ON collection.id = collection_song.collection_id
JOIN song ON song.id = collection_song.song_id
JOIN artist_album ON artist_album.id = song.album_id
JOIN artist ON artist.id = artist_album.artist_id
WHERE artist.name = 'тринадцать карат';
