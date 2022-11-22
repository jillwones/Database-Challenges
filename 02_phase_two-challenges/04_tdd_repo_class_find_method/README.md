# Test-driving a Repository class "find" method

## Exercise

_Work in the project directory `music_library` you've worked on before._

Use the Design recipe document used to test-drive the `AlbumRepository#all`
method previously — following the steps 5 to 8 for the new `AlbumRepository#find` method. 

1. Test-drive and implement the method `find` on the `AlbumRepository` class. 
2. Modify the program in `app.rb` so it prints out to the terminal the data of the record
   with id `3`, using the new method.

I also test drove and implemented the method `find` on the `ArtistRepository` class too.

Here is the [repo](https://github.com/jillwones/music_library) with this completed exercise.

## Challenge

## Challenge

To work on this challenge, first:
  * Setup a new project directory `recipes_directory`.
  * Create a new database `recipes_directory`.
  * Create a new test database `recipes_directory_test` for your tests.

Then:

1. Design and create the table for the following user stories.  

    ```
    As a food lover,
    So I can stay organised and decide what to cook,
    I'd like to keep a list of all my recipes with their names.

    As a food lover,
    So I can stay organised and decide what to cook,
    I'd like to keep the average cooking time (in minutes) for each recipe.

    As a food lover,
    So I can stay organised and decide what to cook,
    I'd like to give a rating to each of the recipes (from 1 to 5).
    ```
2. Test-drive the Repository class for this new table. You should design,
   test-drive and implement two methods `all` and `find`.
3. Write code in the main file `app.rb` so it prints out the list of recipes.

Here is the [repo](https://github.com/jillwones/recipes_directory) with this completed challenge.
