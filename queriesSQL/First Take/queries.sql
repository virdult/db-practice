-- 1. Basic SELECT/WHERE — find all Sci-Fi movies
-- 2. Basic SELECT with ORDER BY — list movies by rating, highest first
-- 3. INNER JOIN — show each movie with its director's name
-- 4. LEFT JOIN — show all directors, even ones with no movies listed (add one to test!)
-- 5. Aggregate — average rating per genre (GROUP BY)
-- 6. Aggregate + HAVING — genres with more than 1 movie
-- 7. Nested query — find movies with rating higher than the average rating of all movies
-- 8. SPJ (select-project-join across 3 tables) — list actor names and the movie titles they acted in
-- 9. Aggregate with join — average review score per movie, only for movies with at least 2 reviews


-- 1.
-- SELECT *
-- FROM movies
-- WHERE genre = 'Sci-Fi';


-- 2.
-- SELECT movies.title, movies.rating
-- FROM movies
-- ORDER BY movies.rating DESC;


-- 3.
--This is not even join no? Why do I need join? What is different? And how to write it as a join?
--SELECT movies.title, directors.name
--FROM movies, directors
--WHERE movies.director_id = directors.director_id;
--How you do it with join is here:
-- SELECT movies.title, directors.name
-- FROM movies
-- INNER JOIN directors
--     ON movies.director_id = directors.director_id;


-- 4.
-- SELECT directors.name, movies.title
-- FROM directors
-- LEFT JOIN movies
--     ON directors.director_id = movies.director_id;


-- 5.
-- SELECT genre, AVG(rating) AS avg_rating
-- FROM movies
-- GROUP BY genre;


-- 6.
-- SELECT genre, AVG(rating) AS avg_rating
-- FROM movies
-- GROUP BY genre
-- HAVING COUNT(*) > 1;


-- 7.
-- SELECT movies.title, rating
-- FROM movies
-- WHERE rating > (
--     SELECT AVG(rating) FROM movies
-- );


-- 8.
-- SELECT actors.name, movies.title
-- FROM actors
-- INNER JOIN movie_actors 
--     ON actors.actor_id = movie_actors.actor_id 
-- INNER JOIN movies
--     ON movie_actors.movie_id = movies.movie_id;


-- 9.
-- SELECT movies.title, AVG(reviews.score) AS avg_score, COUNT(reviews.review_id) AS review_count
-- FROM movies
-- INNER JOIN reviews 
--     ON movies.movie_id = reviews.movie_id
-- GROUP BY movies.title
-- HAVING COUNT(reviews.review_id) >= 2;

-------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1. Basic SELECT/WHERE — find all movies released after 2010

-- 2. Basic SELECT with ORDER BY — list actors by birth year, oldest first

-- 3. INNER JOIN — show each review with the movie title it belongs to

-- 4. LEFT JOIN — show all movies, even ones with no reviews (some should show NULL)

-- 5. Aggregate — count how many movies each director has made

-- 6. Aggregate + HAVING — directors who have made more than 1 movie

-- 7. Nested query — find directors who have never directed a movie (hint: think NOT IN or NOT EXISTS with a subquery)

-- 8. SPJ across 3 tables — list director name, movie title, and genre, but only for movies with a rating above 8.5

-- 9. Aggregate with join — for each genre, show the average rating AND the number of movies, but only include genres where the average rating is above 8.0 (this one combines two things you haven't had to combine before — think about the order WHERE/GROUP BY/HAVING would need to happen in)