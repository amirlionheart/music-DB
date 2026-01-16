SELECT title, duration
FROM track
ORDER BY duration DESC
LIMIT 1;

SELECT title, duration
FROM track
WHERE duration >= 210;

SELECT title, release_year
FROM collection
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name
FROM artist
WHERE name NOT LIKE '% %';

SELECT title
FROM track
WHERE title ILIKE '%мой%' OR title ILIKE '%my%';

select g.name as genre_name,
	count(ag.artist_id) as artist_count
from genre g
left join artistgenre ag on g.genre_id = ag.genre_id
group by g.genre_id, g.name;

select count(t.track_id) as track_count
from track t
join album a on t.album_id = a.album_id 
where a.release_year between 2019 and 2020;

select a.title as album_title,
	round(AVG(t.duration), 2) as avg_duration
from album a
join track t on a.album_id = t.album_id
group by a.album_id, a.title; 

SELECT name
FROM artist
WHERE artist_id NOT IN (
    SELECT aa.artist_id
    FROM artistalbum aa
    JOIN album a ON aa.album_id = a.album_id
    WHERE a.release_year = 2020);

SELECT DISTINCT c.title AS collection_title
FROM collection c
JOIN collection_track ct ON c.collection_id = ct.collection_id
JOIN track t ON ct.track_id = t.track_id
JOIN album al ON t.album_id = al.album_id
JOIN artistalbum aa ON al.album_id = aa.album_id
WHERE aa.artist_id = 2;
