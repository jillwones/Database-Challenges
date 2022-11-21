-- Insert a new artist of your choice, and a new album related to that artist 

-- Then run a SELECT query to check the new artist is now in the table.

INSERT INTO artists 
(name, genre)
VALUES('Aerosmith', 'Rock');

-- the below will show the updated artists table:

SELECT id, name, genre
FROM artists;

/*

id |      name      |    genre
----+----------------+-------------
  1 | Pixies         | Rock
  2 | ABBA           | Pop
  3 | Taylor Swift   | Pop
  4 | Nina Simone    | Pop
  5 | Massive Attack | Alternative
  6 | Aerosmith      | Rock

*/

INSERT INTO albums 
(title, release_year, artist_id)
VALUES('Aerosmith', 1973, 6);

-- the below will show the updated albums table:

SELECT title, release_year, artist_id
FROM albums;

/*

title         | release_year | artist_id
----------------------+--------------+-----------
 Doolittle            |         1989 |         1
 Surfer Rosa          |         1988 |         1
 Super Trouper        |         1980 |         2
 Bossanova            |         1990 |         1
 Lover                |         2019 |         3
 Folklore             |         2020 |         3
 I Put a Spell on You |         1965 |         4
 Baltimore            |         1978 |         4
 Here Comes the Sun   |         1971 |         4
 Fodder on My Wings   |         1982 |         4
 Waterloo             |         1972 |         2
 Messanine            |         1998 |         5
 Aerosmith            |         1973 |         6

*/


