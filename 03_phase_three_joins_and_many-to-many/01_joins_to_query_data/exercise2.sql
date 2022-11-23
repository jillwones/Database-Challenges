
-- Use a JOIN query to find the id and title of the (only) album from Pixies released in 1988.

-- You should get the following result set:
/*

 id |    title    
----+-------------
  2 | Surfer Rosa

*/

SELECT albums.id, albums.title
FROM albums
JOIN artists
ON albums.artist_id = artists.id
WHERE artists.name = 'Pixies' and albums.release_year = 1988;

-- this returns:

/*
 id |    title
----+-------------
  2 | Surfer Rosa

*/

