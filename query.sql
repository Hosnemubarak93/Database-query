
1.ANSWER  
SELECT * FROM posts ; 

2.ANSWER
SELECT posts.title, users.name AS author
FROM posts
INNER JOIN users ON posts.author_id = users.id

3.ANSWER
INSERT INTO posts (title,slug, body, author_id)
VALUES("Fourth post", "fourth_post", "This is fourth post", 2 )

4.ANSWER
UPDATE posts SET title="Now Updated first title" WHERE id=1;

5.ANSWER
SELECT users.name, COUNT(posts.id) AS total_post
FROM users
LEFT JOIN posts ON users.id = posts.author_id
GROUP BY users.id ;

6.ANSWER
SELECT * FROM posts ORDER BY created_at DESC;

7.ANSWER
SELECT * FROM posts
ORDER BY created_at
DESC
LIMIT 2 ;

8.ANSWER
SELECT posts.title, comments.body AS comment
FROM posts
INNER JOIN comments ON posts.id = comments.post_id;

9.ANSWER

SELECT posts.title, GROUP_CONCAT(tags.name) AS tags
FROM posts
INNER JOIN post_tag ON posts.id = post_tag.post_id
INNER JOIN tags ON post_tag.tag_id = tags.id
GROUP BY posts.id;
