CREATE TABLE genre IF NOT EXISTS (
    id SERIAL PRIMARY KEY,
    name VARCHAR(80) NOT NULL
);

CREATE TABLE artist IF NOT EXISTS (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL
);

CREATE TABLE artist_genre IF NOT EXISTS (
    id SERIAL PRIMARY KEY,
    genre_id INTEGER REFERENCES genre(id),
    artist_id INTEGER REFERENCES artist(id),
    UNIQUE(genre_id, artist_id)
);

CREATE TABLE album IF NOT EXISTS (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    year DATE NOT NULL
);

CREATE TABLE artist_album IF NOT EXISTS (
    id SERIAL PRIMARY KEY,
    artist_id INTEGER REFERENCES artist(id),
    album_id INTEGER REFERENCES album(id),
    UNIQUE(artist_id, album_id)
);

CREATE TABLE song IF NOT EXISTS (
    id SERIAL PRIMARY KEY,
    name VARCHAR(120) NOT NULL,
    duration INTEGER NOT NULL,
    album_id INTEGER REFERENCES album(id)
);

CREATE TABLE collection IF NOT EXISTS (
    id SERIAL PRIMARY KEY,
    name VARCHAR(120) NOT NULL,
    year DATE NOT NULL
);

CREATE TABLE collection_song IF NOT EXISTS (
    id SERIAL PRIMARY KEY,
    collection_id INTEGER REFERENCES collection(id),
    song_id INTEGER REFERENCES song(id),
    UNIQUE(collection_id, song_id)
);
