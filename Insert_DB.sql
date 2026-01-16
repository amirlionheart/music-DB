insert into genre(name)
values ('Rap'), 
	   ('Hip-hop'), 
	   ('Funk');

insert into artist(name)
values ('Montagem'), 
	   ('TheWeeknd'), 
	   ('Playboi Carti'), 
	   ('Ariis'), 
	   ('TUL8TE');

insert into album(title, release_year)
values ('After Hours', 2020), 
	   ('Whole Lotta Red', 2020), 
	   ('Narein', 2025), 
	   ('Montagem', 2023);

insert into track(title, duration, album_id)
values ('Blinding Lights', 344, 1), ('Heartless', 323, 1), 
	   ('Timeless', 298, 2), ('Mognolia', 282, 2), 
	   ('Habeeby Leh', 150, 3), ('Qesm El Shakawy', 152, 3),
	   ('Batchi', 70, 4), ('Ecos Da Escuridao', 90, 4);
	   
insert into collection(title, release_year)
values ('Trilogy', 2012), 
	   ('Best of Rap', 2020), 
	   ('Hip-hop Classic', 2021), 
	   ('Montagem Mix', 2023);

insert into artistgenre(artist_id, genre_id)
values (1, 3), (2, 2), (3, 1), (4, 3), (5, 2);

insert into artistalbum(artist_id, album_id)
values (1, 4), (2, 1), (3, 2), (5, 3);

insert into collection_track(collection_id, track_id)
values (1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (3, 6), (4, 7), (4, 8);
