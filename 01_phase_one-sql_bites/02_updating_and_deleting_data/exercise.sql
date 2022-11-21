-- Update the release_year of the album with ID 3 to the value 1972.

-- Use a SELECT query to get that specific record and verify it has been updated.

UPDATE albums 
SET release_year = 1972 
WHERE id = 3;

-- This updates the release year for the album with the id 3 to 1972

-- To check this is done I ran:

SELECT release_year, id
FROM albums
WHERE id = 3;

/* 

It outputted:

release_year | id
--------------+----
         1972 |  3

which verifies the change has been made */
