insert into musical_genre (name) values 
('JAZ'),
('BLUES'),
('ROCK');

insert into artist (name) values 
('Louis Armstrong'),
('Duke Ellington'),
('James Marshall (Jimi) Hendrix'),
('Robert William Gary Moore');

insert into artist_genre (artist_id, genre_id) values 
(1,1),
(2,1),
(3,3),
(4,2);

insert into album  (name, year_of_issue) values 
('Louis Armstrong Plays W.C. Handy',1997),
('The Falcon Theatre', 1965),
('Electric Ladyland',1968),
('Still Got The Blues',1990);

insert into artist_album(album_id, artist_id) values
(1,1),
(2,2),
(3,3),
(4,4);

insert into track (name , duration, album_id) values
('Track_1', 189, 1),
('Track_2', 156, 2),
('Track_3', 132, 3),
('Track_4', 199, 4),
('Track_5', 125, 2),
('Track_6', 209, 4);

insert into collection (name, year_of_issue) values
('collection_1', 1998),
('collection_2', 1970),
('collection_3', 1971),
('collection_4', 1995);

insert into collection_track  (track_id, collection_id) values 
(1,1),
(2,2),
(3,3),
(4,4);


