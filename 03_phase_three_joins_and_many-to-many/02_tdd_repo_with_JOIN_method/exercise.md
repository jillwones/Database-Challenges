# Exercise

Use the database `student_directory_2` from the previous section.

If you didn't design and create the tables previously, [load this SQL into the database](../resources/seeds/student_directory_2.sql).

1. Test-drive and implement the three classes for the `students` and `cohorts` table.   
  You should end up with three classes:
    * `Student`
    * `Cohort`
    * `CohortRepository` — test-drive the method `find_with_students`.

2. Write a small program in `app.rb` using the class `CohortRepository` to print out the data of one cohort with its students to the terminal.

Here is the [repo]() with this completed exercise.