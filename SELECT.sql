
---------------------TASK №2--------------------
select name , duration 
from track
where duration =(
select MAX(duration) from track);


select name , duration 
from track
where duration > 3.5*60;

select name 
from collection
where year_of_issue between 2018 and 2020;

select name
from artist
where name not like '% %';

select name
from track
where name like '%My%';

---------------------TASK №3--------------------

select name , count(artist_id) 
from artist_genre ag 
left join musical_genre mg  on ag.genre_id =  mg.genre_id 
group by name ;

select count(*)
from album a 
left join track t on a.album_id = t.album_id 
where year_of_issue between 2019 and 2020;

select t.album_id ,avg(duration) 
from track t 
group by album_id;

select name
from artist_album aa 
left join album a on aa.album_id  = a.album_id  
left join artist ar on aa.artist_id = ar.artist_id 
where year_of_issue != 2020;

select c.name 
from collection c 
left join collection_track ct on c.collection_id =ct.collection_id 
left join track t on ct.track_id = t.track_id 
left join album a on t.album_id = a.album_id 
left join artist_album aa on a.album_id = aa.album_id 
left join artist a2 on aa.artist_id = a2.artist_id 
where a2.name = 'Robert William Gary Moore';




 














