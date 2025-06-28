-- Название и продолжительность самого длительного трека
SELECT name, duration FROM song
ORDER BY duration DESC LIMIT 1;

-- Название треков, продолжительность которых не менее 3,5 минут
SELECT name FROM song
WHERE duration >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name FROM collection
WHERE Extract(YEAR FROM "year") BETWEEN 2018 AND 2020;

-- Исполнители, чьё имя состоит из одного слов
SELECT name FROM artist
WHERE name NOT LIKE '% %';

-- Название треков, которые содержат слово «мой» или «my»
SELECT name FROM song
WHERE string_to_array(lower(name), ' ') && ARRAY['my', 'мой'];

-- Количество исполнителей в каждом жанре
SELECT genre.name, COUNT(artist_genre.artist_id) FROM genre 
JOIN artist_genre ON genre.id = artist_genre.genre_id
GROUP BY genre.name;

-- Количество треков, вошедших в альбомы 2019–2020 годов
SELECT COUNT(*) FROM song
JOIN album ON song.album_id = album.id
WHERE Extract(YEAR FROM album.year) BETWEEN 2019 AND 2020;

-- Средняя продолжительность треков по каждому альбому
SELECT album.name, AVG(song.duration) FROM song
JOIN album ON song.album_id = album.id
GROUP BY album.name;

-- Все исполнители, которые не выпустили альбомы в 2020 году
SELECT artist.name FROM artist
JOIN artist_album ON artist.id = artist_album.artist_id
JOIN album ON album.id = artist_album.album_id
WHERE Extract(YEAR FROM album.year) != 2020;

-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)
SELECT DISTINCT collection.name FROM collection
JOIN collection_song ON collection.id = collection_song.collection_id
JOIN song ON song.id = collection_song.song_id
JOIN artist_album ON artist_album.id = song.album_id
JOIN artist ON artist.id = artist_album.artist_id
WHERE artist.name = 'тринадцать карат';
