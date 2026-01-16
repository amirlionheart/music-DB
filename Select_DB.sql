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

SELECT g.name AS genre_name,
	COUNT(ag.artist_id) AS artist_count
FROM genre g
LEFT JOIN artistgenre ag ON g.genre_id = ag.genre_id
GROUP BY g.genre_id, g.name;

SELECT COUNT(t.track_id) AS track_count
FROM track t
JOIN album a ON t.album_id = a.album_id 
where a.release_year BETWEEN 2019 AND 2020;

SELECT a.title AS album_title,
	ROUND(AVG(t.duration), 2) AS avg_duration
FROM album a
JOIN track t ON a.album_id = t.album_id
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
