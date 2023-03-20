# SQL Songs Analysis
This project contains SQL queries used to analyze a dataset of songs. The queries provide insights into various aspects of the dataset, such as song length, danceability, energy, and artist.

Queries
Top 5 Longest Songs
```sql
SELECT name FROM songs
ORDER BY duration_ms
DESC LIMIT 5;
```
This query returns the names of the top 5 longest songs in the dataset, sorted in descending order by duration.

Highly Danceable Songs
```sql
SELECT name FROM songs
WHERE danceability > 0.75
AND energy > 0.75
AND valence > 0.75;
```
This query returns the names of songs that have a danceability, energy, and valence greater than 0.75.

Average Energy of Songs
```sql
SELECT AVG(energy) FROM songs;
```
This query returns the average energy of all the songs in the dataset.

Songs by Post Malone
```sql
SELECT name FROM songs WHERE artist_id = (SELECT id FROM artists
where name = 'Post Malone');
```
This query returns the names of all the songs in the dataset by the artist Post Malone.

Average Energy of Drake's Songs
```sql
SELECT AVG(energy) FROM songs
WHERE artist_id = (SELECT id FROM artists WHERE name = 'Drake');
```
This query returns the average energy of all the songs in the dataset by the artist Drake.

Songs Featuring Other Artists
```sql
SELECT name FROM songs WHERE name LIKE '%feat.%';
```
This query returns the names of all the songs in the dataset that feature other artists.

This project consists of SQL queries and can be run using any SQL client that supports the syntax used in the queries. Here are the steps to run the queries:

1. Make sure you have an SQL client installed on your computer. Some popular SQL clients include MySQL Workbench, PostgreSQL, and SQL Server Management Studio.

2. Clone or download the project files to your computer.

3. Open the SQL client of your choice and connect to the database where the songs and artists tables are stored.

4. Copy and paste the desired query from the project's README file into the SQL client.

5. Run the query to see the results.

> Note: Depending on the SQL client you are using, the steps to connect to the database and run a query may differ. Please refer to the documentation of your SQL client for specific instructions.

## Conclusion
The SQL queries in this project provide valuable insights into the songs dataset, such as the top 5 longest songs, highly danceable songs, and the average energy of the songs. They can be used to gain a deeper understanding of the data and make informed decisions about future music recommendations and curation.
