INSERT INTO genre(name)
VALUES ('Rap'), 
	   ('Hip-hop'), 
	   ('Funk');

INSERT INTO artist(name)
VALUES ('Montagem'), 
	   ('TheWeeknd'), 
	   ('Playboi Carti'), 
	   ('Ariis'), 
	   ('TUL8TE');

INSERT INTO album(title, release_year)
VALUES ('After Hours', 2020), 
	   ('Whole Lotta Red', 2020), 
	   ('Narein', 2025), 
	   ('Montagem', 2023);

INSERT INTO track(title, duration, album_id)
VALUES ('Blinding Lights', 344, 1), ('Heartless', 323, 1), 
	   ('Timeless', 298, 2), ('Mognolia', 282, 2), 
	   ('Habeeby Leh', 150, 3), ('Qesm El Shakawy', 152, 3),
	   ('Batchi', 70, 4), ('Ecos Da Escuridao', 90, 4);
	   
INSERT INTO collection(title, release_year)
VALUES ('Trilogy', 2012), 
	   ('Best of Rap', 2020), 
	   ('Hip-hop Classic', 2021), 
	   ('Montagem Mix', 2023);

INSERT INTO artistgenre(artist_id, genre_id)
VALUES (1, 3), (2, 2), (3, 1), (4, 3), (5, 2);

INSERT INTO artistalbum(artist_id, album_id)
VALUES (1, 4), (2, 1), (3, 2), (5, 3);

INSERT INTO collection_track(collection_id, track_id)
VALUES (1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (3, 6), (4, 7), (4, 8);

