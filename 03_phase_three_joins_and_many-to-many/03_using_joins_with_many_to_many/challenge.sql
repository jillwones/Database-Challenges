-- Use SQL to insert a new tag 'sql' and associate the post 
-- titled 'SQL basics' with this tag.

-- Then use a SELECT query with a JOIN to retrieve all posts associated 
-- with the tag 'sql' and verify the above worked.

-- Inserting new tag:

INSERT INTO tags (id, name) VALUES(5, 'sql');
INSERT INTO posts_tags (post_id, tag_id) VALUES(7, 5);

-- Select query:

SELECT posts.title 
FROM posts 
JOIN posts_tags ON posts.id = posts_tags.post_id 
JOIN tags ON tags.id = posts_tags.tag_id
WHERE tags.name = 'sql';

-- outputs: 
/*

   title
------------
 SQL basics

*/
