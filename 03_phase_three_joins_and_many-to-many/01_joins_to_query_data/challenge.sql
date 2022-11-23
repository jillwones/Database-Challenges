
-- Find the id and title of all albums from Nina Simone released after 1975.

-- You should get the following result set:

/* 
 album_id |       title        
----------+--------------------
        9 | Baltimore
       11 | Fodder on My Wings
*/

SELECT albums.id AS album_id, albums.title
FROM albums
JOIN artists
ON albums.artist_id = artists.id
WHERE artists.name = 'Nina Simone' and  albums.release_year > 1975;

-- this returns:

/*
album_id |       title
----------+--------------------
        9 | Baltimore
       11 | Fodder on My Wings

*/
