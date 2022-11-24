# Repository classes with many-to-many relationships

```ruby
post_repository = PostRepository.new 

posts = post_repository.find_by_tag('coding')

# The array `posts` should contain the following Post objects:
#
#  * 1	How to use Git
#  * 2	Ruby classes
#  * 3	Using IRB
#  * 7  SQL basics
```

| Method      |Job| Arguments | SQL query                                     | Returns  |
| ----------- |----|-----------| ----------------------------------------------|----------|
| `find_by_tag` |Find all posts for the given tag| A tag (string) | `SELECT ... JOIN ` | Array of `Post` |

## Exercise 

Setup a new project `blog` for this exercise.

Test-drive and implement Model and Repository classes for the table `posts`, with the method `PostRepository#find_by_tag` having the behaviour described above.

Here is the [repo](https://github.com/jillwones/blog_many-to-many) with this completed exercise.

## Challenge

For this challenge, reuse the database schema created [in the previous section](./03_using_joins_with_many_to_many.md) (with the Many-to-Many between `posts` and `tags`).

Test-drive and implement Model and Repository classes for the table `tags`, with the method `TagRepository#find_by_post`. This method should accept a post ID, and return an array of related  `Tag` objects.

Here is the [repo](https://github.com/jillwones/blog_many-to-many) with this completed challenge.
