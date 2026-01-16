CREATE TABLE Genre (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Artist (
    artist_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Album (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    release_year INTEGER NOT NULL
        CHECK (
            release_year BETWEEN 1990
            AND EXTRACT(YEAR FROM CURRENT_DATE)
        )
);

CREATE TABLE Track (
    track_id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    duration INTEGER NOT NULL
        CHECK (duration > 0),
    album_id INTEGER NOT NULL
        REFERENCES Album(album_id)
        ON DELETE CASCADE
);

CREATE TABLE Collection (
    collection_id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    release_year INTEGER NOT NULL
        CHECK (
            release_year BETWEEN 1990
            AND EXTRACT(YEAR FROM CURRENT_DATE)
        )
);

CREATE TABLE ArtistGenre (
    artist_id INTEGER
        REFERENCES Artist(artist_id)
        ON DELETE CASCADE,
    genre_id INTEGER
        REFERENCES Genre(genre_id)
        ON DELETE CASCADE,
    PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE ArtistAlbum (
    artist_id INTEGER
        REFERENCES Artist(artist_id)
        ON DELETE CASCADE,
    album_id INTEGER
        REFERENCES Album(album_id)
        ON DELETE CASCADE,
    PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE Collection_Track (
    collection_id INTEGER
        REFERENCES Collection(collection_id)
        ON DELETE CASCADE,
    track_id INTEGER
        REFERENCES Track(track_id)
        ON DELETE CASCADE,
    PRIMARY KEY (collection_id, track_id)
);
