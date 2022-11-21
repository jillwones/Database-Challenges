-- Delete the album with ID 12.

-- Use a SELECT query to get the list of albums and verify that one has been deleted.

SELECT title, id
FROM albums;

-- this shows the table, still with the album with the id 12:

/*

title         | id
----------------------+----
 Doolittle            |  1
 Surfer Rosa          |  2
 Super Trouper        |  4
 Bossanova            |  5
 Lover                |  6
 Folklore             |  7
 I Put a Spell on You |  8
 Baltimore            |  9
 Here Comes the Sun   | 10
 Fodder on My Wings   | 11
 Ring Ring            | 12
 Waterloo             |  3

 */

DELETE FROM albums WHERE id = 12;

-- now the table shows the albums without Ring Ring as it has been deleted:

/*

title         | id
----------------------+----
 Doolittle            |  1
 Surfer Rosa          |  2
 Super Trouper        |  4
 Bossanova            |  5
 Lover                |  6
 Folklore             |  7
 I Put a Spell on You |  8
 Baltimore            |  9
 Here Comes the Sun   | 10
 Fodder on My Wings   | 11
 Waterloo             |  3

 */

 


 