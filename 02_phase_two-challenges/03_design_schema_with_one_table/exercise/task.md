# Single Table Design Recipe Template

## 1. Extract nouns from the user stories or specification

```
As a coach
So I can get to know all students
I want to see a list of students' names.

As a coach
So I can get to know all students
I want to see a list of students' cohorts.
```

```
Nouns:

student, name, cohort
```

## 2. Infer the Table Name and Columns

Put the different nouns in this table. Replace the example with your own nouns.

| Record                | Properties          |
| --------------------- | ------------------  |
| student               | name, cohort

Name of the table (always plural): `students` 

Column names: `name`, `cohort`

## 3. Decide the column types.

```
# EXAMPLE:

id: SERIAL
name: text
cohort: text
```

## 4. Write the SQL.

```sql
-- EXAMPLE
-- file: albums_table.sql

-- Replace the table name, columm names and types.

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name text,
  cohort text
);
```

## 5. Create the table.

```bash
createdb students_exercise
psql -h 127.0.0.1 students_exercise < students_table.sql
```

Or can just go into TablePlus and create the new database there and run the SQL on it to make the database rather than making the sql file