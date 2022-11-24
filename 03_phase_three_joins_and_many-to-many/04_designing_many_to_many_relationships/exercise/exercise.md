# Exercise - Two Tables (Many-to-Many) Design Recipe

## 1. Extract nouns from the user stories or specification

```
As a coach
So I can get to know all students
I want to keep a list of students' names.

As a coach
So I can get to know all students
I want to assign tags to students (for example, "happy", "excited", etc).

As a coach
So I can get to know all students
I want to be able to assign the same tag to many different students.

As a coach
So I can get to know all students
I want to be able to assign many different tags to a student.
```

```
Nouns:

students, name
tags, name
```

## 2. Infer the Table Name and Columns

Put the different nouns in this table. Replace the example with your own nouns.

| Record                | Properties          |
| --------------------- | ------------------  |
| student               | name
| tag                   | name

1. Name of the first table (always plural): `students` 

    Column names: `name`

2. Name of the second table (always plural): `tags` 

    Column names: `name`

## 3. Decide the column types.

[Here's a full documentation of PostgreSQL data types](https://www.postgresql.org/docs/current/datatype.html).

Most of the time, you'll need either `text`, `int`, `bigint`, `numeric`, or `boolean`. If you're in doubt, do some research or ask your peers.

Remember to **always** have the primary key `id` as a first column. Its type will always be `SERIAL`.

```
Table: students
id: SERIAL
name: text

Table: tags
id: SERIAL
name: text
```

## 4. Design the Many-to-Many relationship

Make sure you can answer YES to these two questions:

1. Can one [TABLE ONE] have many [TABLE TWO]? (Yes/No)
2. Can one [TABLE TWO] have many [TABLE ONE]? (Yes/No)

```
1. Can one students have many tags? YES
2. Can one tag have many students? YES
```

_If you would answer "No" to one of these questions, you'll probably have to implement a One-to-Many relationship, which is simpler. Use the relevant design recipe in that case._

## 5. Design the Join Table

The join table usually contains two columns, which are two foreign keys, each one linking to a record in the two other tables.

The naming convention is `table1_table2`.

```
Join table for tables: students and tags
Join table name: students_tags
Columns: student_id, tag_id
```

## 4. Write the SQL.

```sql

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name text
);

-- Create the second table.
CREATE TABLE tags (
  id SERIAL PRIMARY KEY,
  name text
);

-- Create the join table.
CREATE TABLE students_tags (
  student_id int,
  tag_id int,
  constraint fk_student foreign key(student_id) references students(id) on delete cascade,
  constraint fk_tag foreign key(tag_id) references tags(id) on delete cascade,
  PRIMARY KEY (post_id, tag_id)
);

```

## 5. Create the tables.

```bash
psql -h 127.0.0.1 database_name < students_tags.sql
```
