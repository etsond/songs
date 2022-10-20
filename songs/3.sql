--going through to get the list of the top  5 longest ones and put them in order

SELECT name FROM songs
ORDER BY duration_ms
DESC LIMIT 5;