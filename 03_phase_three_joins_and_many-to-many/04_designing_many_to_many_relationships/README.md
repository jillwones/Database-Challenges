# Designing many to many relationships

A many-to-many relationship is needed when a record from the first table can have _many_ records in the other table, but the opposite is also true.

You can recognise the need for a many-to-many relationship when you can answer "yes" to the following questions:

1. Can one [TABLE ONE] have many [TABLE TWO]?
2. Can one [TABLE TWO] have many [TABLE ONE]?

As an example: a blog post can have many tags. But a tag can also be associated with many posts.

1. Can a _post_ have many _tags_? - Yes
1. Can a _tag_ have many _posts_? - Yes

When designing a many-to-many relationship, you will need a third table, acting as a "link" between to the tables. This is called a **join table**. It contains two columns, which are two foreign keys, each linking to the two tables.
