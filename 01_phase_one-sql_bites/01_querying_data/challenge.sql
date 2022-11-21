-- Find the titles of the albums released by 'Pixies' and released between 1980 and 1990 (inclusive).

-- first i find the id of the artist Pixies in the artists table:

SELECT id 
FROM artists
WHERE name = 'Pixies'

-- returns id is 1

-- so i select for titles in albums where the artist_id is 1

SELECT title 
FROM albums 
WHERE release_year >= 1980 AND release_year <= 1990 AND artist_id = 1

/* 
Expected Return:


       title        
--------------------
 Doolittle
 Surfer Rosa
 Bossanova

Actual Return:

    title
-------------
 Doolittle
 Surfer Rosa
 Bossanova

*/
 


