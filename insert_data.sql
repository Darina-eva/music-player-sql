INSERT INTO artist (name) VALUES ('Zeмфира');
INSERT INTO artist (name) VALUES ('Король и Шут');
INSERT INTO artist (name) VALUES ('тринадцать карат');
INSERT INTO artist (name) VALUES ('Lana Del Rey');

INSERT INTO genre (name) VALUES ('rock');
INSERT INTO genre (name) VALUES ('punk');
INSERT INTO genre (name) VALUES ('hip-hop');
INSERT INTO genre (name) VALUES ('pop');

INSERT INTO artist_genre (artist_id, genre_id) VALUES (1,1);
INSERT INTO artist_genre (artist_id, genre_id) VALUES (2,1);
INSERT INTO artist_genre (artist_id, genre_id) VALUES (2,2);
INSERT INTO artist_genre (artist_id, genre_id) VALUES (3,1);
INSERT INTO artist_genre (artist_id, genre_id) VALUES (3,4);
INSERT INTO artist_genre (artist_id, genre_id) VALUES (4,1);
INSERT INTO artist_genre (artist_id, genre_id) VALUES (4,3);
INSERT INTO artist_genre (artist_id, genre_id) VALUES (4,4);

INSERT INTO album (name, year) VALUES ('Прости меня моя любовь', '2000-01-01');
INSERT INTO album (name, year) VALUES ('Камнем по голове', '1996-01-01');
INSERT INTO album (name, year) VALUES ('13 причин почему', '2020-01-01');
INSERT INTO album (name, year) VALUES ('Blue Banisters', '2021-01-01');

INSERT INTO artist_album (artist_id, album_id) VALUES (1,1);
INSERT INTO artist_album (artist_id, album_id) VALUES (2,2);
INSERT INTO artist_album (artist_id, album_id) VALUES (3,3);
INSERT INTO artist_album (artist_id, album_id) VALUES (4,4);

INSERT INTO song (name, duration, album_id) VALUES ('Созрела', 213, 1);
INSERT INTO song (name, duration, album_id) VALUES ('Zero', 167, 1);
INSERT INTO song (name, duration, album_id) VALUES ('Дурак и молния', 114, 2);
INSERT INTO song (name, duration, album_id) VALUES ('Мой характер', 160, 2);
INSERT INTO song (name, duration, album_id) VALUES ('Злодей и шапка', 132, 2);
INSERT INTO song (name, duration, album_id) VALUES ('Больше не буду', 139, 3);
INSERT INTO song (name, duration, album_id) VALUES ('Во снах', 120, 3);
INSERT INTO song (name, duration, album_id) VALUES ('Dealer', 274, 4);
INSERT INTO song (name, duration, album_id) VALUES ('Arcadia', 263, 4);

INSERT INTO collection (name, year) VALUES ('Мой рок', '2017-01-01');
INSERT INTO collection (name, year) VALUES ('Часто прослушиваемое', '2020-01-01');
INSERT INTO collection (name, year) VALUES ('Моя молодость', '2015-01-01');
INSERT INTO collection (name, year) VALUES ('Мне нравится', '2024-01-01');

INSERT INTO collection_song (collection_id, song_id) VALUES (1,1);
INSERT INTO collection_song (collection_id, song_id) VALUES (1,2);
INSERT INTO collection_song (collection_id, song_id) VALUES (2,6);
INSERT INTO collection_song (collection_id, song_id) VALUES (2,5);
INSERT INTO collection_song (collection_id, song_id) VALUES (4,5);
INSERT INTO collection_song (collection_id, song_id) VALUES (4,6);
INSERT INTO collection_song (collection_id, song_id) VALUES (3,3);
INSERT INTO collection_song (collection_id, song_id) VALUES (3,7);
INSERT INTO collection_song (collection_id, song_id) VALUES (3,8);
