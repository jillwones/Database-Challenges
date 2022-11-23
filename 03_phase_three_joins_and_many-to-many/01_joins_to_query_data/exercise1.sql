
-- Use the database music_library for the following exercises.

-- Use a JOIN query to select the id and title of all the albums from Taylor Swift.

-- You should get the following result set:

/*

 id |  title   
----+----------
  6 | Lover
  7 | Folklore

*/

SELECT albums.id, albums.title
FROM albums
JOIN artists
ON albums.artist_id = artists.id
WHERE artists.name = 'Taylor Swift';

-- this returns:

/*
id |  title
----+----------
  6 | Lover
  7 | Folklore

*/