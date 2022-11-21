# Exercise

Create a sequence diagram to show the music library exercise from the previous section.

Answer:

```mermaid
sequenceDiagram
    participant t as terminal
    participant app as Main program (app.rb)
    participant ar as AlbumRepository class <br /> (in lib/album_repository.rb)
    participant db_conn as DatabaseConnection class <br /> (in lib/database_connection.rb)
    participant db as Postgres database

    Note left of t: Flow of time <br />⬇ <br /> ⬇ <br /> ⬇ 

    t->>app: Runs `ruby app.rb`
    app->>db_conn: Opens connection to database calling method `connect` on DatabaseConnection
    db_conn->>db_conn: Opens database connection using PG and stores the connection
    app->>ar: Calls method `all` on AlbumRepository
    ar->>db_conn: Sends SQL query by calling method `exec_params` on DatabaseConnection
    db_conn->>db: Sends query to database via the open database connection
    db->>db_conn: Returns an array of hashes, one for each row of the albums table

    db_conn->>ar: Returns an array of hashes, one for each row of the albums table
    loop 
        ar->>ar: Loops through array and creates an Album object for every row
    end
    ar->>app: Returns array of Album objects
    app->>t: Prints list of albums to terminal
```
