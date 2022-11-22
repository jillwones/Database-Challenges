# Single Table Design Recipe Template

## 1. Extract nouns from the user stories or specification

```
As a person who loves movies,
So I can list all my favourite movies
I want to see a list of movies' titles.

As a person who loves movies,
So I can list all my favourite movies
I want to see a list of movies' genres.

As a person who loves movies,
So I can list all my favourite movies
I want to see a list of movies' release year.
```

```
Nouns:

movie, title, genre, release_year
```

## 2. Infer the Table Name and Columns

Put the different nouns in this table. Replace the example with your own nouns.

| Record                | Properties                |
| --------------------- | ------------------------  |
| movies                | title, genre, release_year

Name of the table (always plural): `movies` 

Column names: `title`, `genre`, `release_year`

## 3. Decide the column types.

```
# EXAMPLE:

id: SERIAL
title: text
genre: text
release_year: int
```

## 4. Write the SQL.

```sql
-- EXAMPLE
-- file: albums_table.sql

-- Replace the table name, columm names and types.

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title text,
  genre text,
  release_year int
);
```

## 5. Create the table.

```bash
createdb movies_challenge
psql -h 127.0.0.1 movies_challenge < movies_table.sql
```

Or can just go into TablePlus and create the new database there and run the SQL on it to make the database rather than making the sql file