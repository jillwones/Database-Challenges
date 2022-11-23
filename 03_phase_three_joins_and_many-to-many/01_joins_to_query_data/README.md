# Using joins to query related data

Here is the general syntax:
```
SELECT [columns to select]
  FROM [table name]
  JOIN [other table name]
  ON [join condition]
```

* The first table we're querying on the left of the JOIN keyword is albums. We'll call this the "left" table.
* The second table, on the right of the JOIN keyword, is artists. We'll call this one the "right" table.
* We're specifying how the two tables are related, with ON. Since every value in the foreign key albums.artist_id references a primary key value of artists.id, we're using artists.id = albums.artist_id. The JOIN will match associated records by using this condition.
* Note that we need to prefix column names (in the list of queried columns, and in the ON condition) with their table name, to remove ambiguity.

Examples:
```sql
SELECT albums.id,
      albums.title,
      artists.id,
      artists.name
  FROM albums
    JOIN artists
    ON artists.id = albums.artist_id;
```

```
 id |        title         | id |     name     
----+----------------------+----+--------------
  1 | Doolittle            |  1 | Pixies
  2 | Surfer Rosa          |  1 | Pixies
  3 | Waterloo             |  2 | ABBA
  4 | Super Trouper        |  2 | ABBA
  5 | Bossanova            |  1 | Pixies
  6 | Lover                |  3 | Taylor Swift
  7 | Folklore             |  3 | Taylor Swift
  8 | I Put a Spell on You |  4 | Nina Simone
  9 | Baltimore            |  4 | Nina Simone
```

```sql
SELECT albums.id,
       albums.title,
       artists.id AS artist_id,
       artists.name
  FROM albums
    JOIN artists
    ON artists.id = albums.artist_id;
```

```
 id |        title         | artist_id |     name     
----+----------------------+-----------+--------------
  1 | Doolittle            |         1 | Pixies
  2 | Surfer Rosa          |         1 | Pixies
  3 | Waterloo             |         2 | ABBA
  4 | Super Trouper        |         2 | ABBA
  5 | Bossanova            |         1 | Pixies
  6 | Lover                |         3 | Taylor Swift
  7 | Folklore             |         3 | Taylor Swift
  8 | I Put a Spell on You |         4 | Nina Simone
  9 | Baltimore            |         4 | Nina Simone
```