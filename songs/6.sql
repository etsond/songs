--get the list that are by post malone

SELECT name FROM songs WHERE artist_id = (SELECT id FROM artists
where name = 'Post Malone');