# Wrapping the program in an Application class

You've built Repository and Model classes to provide an interface to the database. These
classes' job is to make the bridge between the rest of our program and the database. It's
often called the **database layer** or **model layer**.

If we split our program into different "layers" depending on what their job is, we can see
two different ones appearing — the database layer, and the rest of our program, which
usually contains all the program logic.

On the diagram below, you can see this split — the part on the right is the database layer
containing the Model and Repository classes learned in this module.

![Program layers](./resources/program-layers.png)

Therefore, our program needs at least one class as part of its "core" layer.

## The Application class interface

This class wraps the other layer — it acts as an entrypoint to our program

```ruby
# file: app.rb

require_relative './lib/album_repository'
require_relative './lib/artist_repository'

class Application

  # The Application class initializer
  # takes four arguments:
  #  * The database name to call `DatabaseConnection.connect`
  #  * the Kernel object as `io` (so we can mock the IO in our tests)
  #  * the AlbumRepository object (or a double of it)
  #  * the ArtistRepository object (or a double of it)
  def initialize(database_name, io, album_repository, artist_repository)
    DatabaseConnection.connect(database_name)
    @io = io
    @album_repository = album_repository
    @artist_repository = artist_repository
  end

  def run
    # "Runs" the terminal application
    # so it can ask the user to enter some input
    # and then decide to run the appropriate action
    # or behaviour.

    # Use `@io.puts` or `@io.gets` to
    # write output and ask for user input.
  end
end

# Don't worry too much about this if statement. It is basically saying "only
# run the following code if this is the main file being run, instead of having
# been required or loaded by another file.
# If you want to learn more about __FILE__ and $0, see here: https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Variables_and_Constants#Pre-defined_Variables
if __FILE__ == $0
  app = Application.new(
    'music_library',
    Kernel,
    AlbumRepository.new,
    ArtistRepository.new
  )
  app.run
end
```