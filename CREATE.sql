create table if not exists musical_genre(
genre_id serial primary key,
name varchar(40) unique not null );

create table if not exists artist(
artist_id serial primary key,
name varchar(40) not null);

create table if not exists artist_genre(
artist_id int,
genre_id int,
foreign key (artist_id) references artist(artist_id),
foreign key (genre_id) references musical_genre(genre_id));

create table if not exists album(
album_id serial primary key,
album_name varchar(40) not null,
year_of_issue int not null);

create table if not exists artist_album(
album_id int,
artist_id int,
foreign key (artist_id) references artist(artist_id),
foreign key (album_id) references album(album_id));

create table if not exists collection(
collection_id serial primary key,
name varchar(40) not null,
year_of_issue int not null);

create table if not exists track(
track_id serial primary key,
name varchar(40) not null,
duration int not null,
album_id int references album(album_id));

create table if not exists collection_track(
track_id int ,
collection_id int,
foreign key (track_id) references track(track_id),  
foreign key (collection_id) references collection(collection_id));


