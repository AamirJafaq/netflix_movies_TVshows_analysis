DROP TABLE IF EXISTS netflix;
CREATE TABLE netflix
(
	show_id	VARCHAR(5),
	type    VARCHAR(10),
	title	VARCHAR(250),
	director VARCHAR(250),
	casts	VARCHAR(1250),
	country	VARCHAR(250),
	date_added	VARCHAR(55),
	release_year	INT,
	rating	VARCHAR(15),
	duration	VARCHAR(15),
	listed_in	VARCHAR(250),
	description VARCHAR(550)
);
SELECT * FROM netflix;

-- Number of obervations?
SELECT count(*) FROM netflix;
-- There are 8800 obervations.


--Q.1 Count the number of Movies vs TV Shows.
SELECT type, count(*)
FROM netflix
GROUP BY type;


--Q.2 Find the most common rating for movies and TV shows
WITH ratings AS (SELECT type, rating, count(rating) AS total_ratings
FROM netflix
GROUP BY type, rating
ORDER BY type, count(rating) DESC), ranking AS (
SELECT type, rating, total_ratings, ROW_NUMBER() OVER (PARTITION BY type) AS ranks
FROM ratings
)
SELECT type, rating, total_ratings, ranks
FROM ranking
WHERE ranks=1;


--Q.3 List all movies released in a specific year (e.g., 2020)
SELECT title
FROM netflix 
WHERE release_year=2020;


SELECT type, rating, total_ratings, ROW_NUMBER() OVER (PARTITION BY type)
FROM ratings;


--Q.4 Find the top 5 countries with the most content on Netflix
SELECT country, count(show_id) AS num_of_shows
FROM netflix
GROUP BY country
ORDER BY num_of_shows DESC
LIMIT 5;

--Q.5 Identify the longest movie
WITH duration_int AS (
SELECT title, duration, CAST(REGEXP_REPLACE(duration, '[^0-9]', '', 'g') AS INT) AS duration_mins
FROM netflix
WHERE type='Movie'
) SELECT title, duration, duration_mins
FROM duration_int
WHERE duration_mins=(SELECT max(duration_mins) FROM duration_int);
--or
SELECT title, duration, CAST(REGEXP_REPLACE(duration, '[^0-9]', '', 'g') AS INT) AS duration_mins
FROM netflix
WHERE type='Movie'
ORDER BY duration_mins DESC;
--or
SELECT 
	title, duration
FROM netflix
WHERE type = 'Movie'
ORDER BY SPLIT_PART(duration, ' ', 1)::INT DESC;


--Q.6 Find content added in the last 5 years 
SELECT title, date_added
FROM netflix
WHERE TO_DATE(date_added, 'Month DD, YYYY')+INTERVAL '5 years' < CURRENT_DATE; -- Herer I used current date as reference date.
--or
SELECT title, date_added
FROM netflix
WHERE date_added::DATE+INTERVAL '5 years' < CURRENT_DATE;

--Q.7 Find all the movies/TV shows by director 'Rajiv Chilaka'!
SELECT title, director
FROM netflix
WHERE director ILIKE '%Rajiv Chilaka%';
--or
WITH rajiv_table AS (SELECT title, director, 'Rajiv Chilaka'=ANY(STRING_TO_ARRAY(director, ',')) AS director_search
FROM netflix)
SELECT title, director
FROM  rajiv_table
WHERE director_search=True;



--Q.8 List all TV shows with more than 5 seasons
WITH TV_seasons AS (SELECT title, SPLIT_PART(duration, ' ', 1)::INT AS num_seasons
FROM netflix
WHERE type='TV Show')
SELECT title, num_seasons
FROM TV_seasons
WHERE num_seasons>5;
--or 
SELECT title, SPLIT_PART(duration, ' ', 1)::INT AS num_seasons
FROM netflix
WHERE TYPE = 'TV Show' AND SPLIT_PART(duration, ' ', 1)::INT > 5


--Q.9 Count the number of content items in each genre
WITH genres AS (SELECT TRIM(UNNEST(STRING_TO_ARRAY(listed_in, ','))) AS genre, title
FROM netflix)
SELECT genre, count(title) AS content_items
FROM genres
GROUP BY genre
ORDER BY content_items DESC;
--or 
SELECT 
	TRIM(UNNEST(STRING_TO_ARRAY(listed_in, ','))) as genre,
	COUNT(*) as content_items
FROM netflix
GROUP BY 1
ORDER BY content_items DESC;



--Q.10 List all movies that are documentaries
SELECT title
FROM netflix
WHERE listed_in ILIKE '%Documentaries%';
--or

SELECT title
FROM netflix ntf
WHERE EXISTS (
			SELECT 1 
			FROM UNNEST(STRING_TO_ARRAY(ntf.listed_in, ',')) AS genre 
			WHERE TRIM(genre)='Documentaries');



--Q.11 Find how many movies actor 'Salman Khan' appeared in last 10 years!
SELECT count(title) 
FROM netflix
WHERE casts ILIKE '%Salman Khan%' AND release_year > EXTRACT(YEAR FROM CURRENT_DATE) - 10;

--Q.12 Find all content without a director
SELECT title 
FROM netflix
WHERE director='unknow'

--Q.13 Find the top 10 actors who have appeared in the highest number of movies produced in India.
SELECT TRIM(UNNEST(STRING_TO_ARRAY(casts, ','))) AS Actor, count(title) AS total_movies
FROM netflix
WHERE country='India'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;


/*
Question 14: Categorize the content based on the presence of the keywords 'kill' and 'violence' in 
the description field. Label content containing these keywords as 'Bad' and all other 
content as 'Good'. Count how many items fall into each category.
*/

SELECT type, CASE WHEN description ~* '\mkill\M' OR description ~* '\mviolence\M' THEN 'Bad'
			ELSE 'Good' END AS category, count(title) AS num_movies
FROM netflix
GROUP BY 2, type
ORDER BY 2 DESC;

