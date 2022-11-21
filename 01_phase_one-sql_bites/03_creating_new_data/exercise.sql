-- INSERT a new record in albums with title 'Mezzanine', and release year 1998.

-- We forgot to link this new record with the correct artist. 
-- Use an UPDATE query to update the artist_id of that new album with Massive Attack 
-- (it should have the id value 5).

INSERT INTO albums 
(title, release_year)
VALUES('Messanine', 1998);

-- double checking artist_ID of massive attack who made the album

SELECT id
FROM artists
WHERE name = 'Massive Attack';

-- returns id number 5

-- so now we updated the album table to add the correct artist_id for messanine:

UPDATE albums
SET artist_id = 5
WHERE title = 'Messanine';

-- double checking its been updated:

SELECT title, artist_ID
FROM albums 
WHERE artist_id = 5;

-- returns:

/*

title   | artist_id
-----------+-----------
 Messanine |         5

*/ 

