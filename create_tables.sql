CREATE TABLE IF NOT EXISTS genre (
    id SERIAL PRIMARY KEY,
    name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist_genre (
    id SERIAL PRIMARY KEY,
    genre_id INTEGER REFERENCES genre(id),
    artist_id INTEGER REFERENCES artist(id),
    UNIQUE(genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS album (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    year DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS artist_album (
    id SERIAL PRIMARY KEY,
    artist_id INTEGER REFERENCES artist(id),
    album_id INTEGER REFERENCES album(id),
    UNIQUE(artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS song (
    id SERIAL PRIMARY KEY,
    name VARCHAR(120) NOT NULL,
    duration INTEGER NOT NULL,
    album_id INTEGER REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS collection (
    id SERIAL PRIMARY KEY,
    name VARCHAR(120) NOT NULL,
    year DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS collection_song (
    id SERIAL PRIMARY KEY,
    collection_id INTEGER REFERENCES collection(id),
    song_id INTEGER REFERENCES song(id),
    UNIQUE(collection_id, song_id)
);
