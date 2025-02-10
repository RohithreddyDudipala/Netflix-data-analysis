-- SQL Queries for Netflix Data Analysis

-- 1. Retrieve the total number of movies and TV shows
SELECT type, COUNT(*) AS count
FROM netflix_data
GROUP BY type;

-- 2. Find the top 10 most common genres
SELECT listed_in AS genre, COUNT(*) AS count
FROM netflix_data
GROUP BY listed_in
ORDER BY count DESC
LIMIT 10;

-- 3. Get the number of movies and shows released per year
SELECT release_year, COUNT(*) AS total_releases
FROM netflix_data
GROUP BY release_year
ORDER BY release_year DESC;

-- 4. Find the highest-rated movies and TV shows
SELECT title, rating, type
FROM netflix_data
WHERE rating IN ('TV-MA', 'TV-14', 'R')
ORDER BY rating DESC, title;

-- 5. Identify the most frequent directors on Netflix
SELECT director, COUNT(*) AS num_movies
FROM netflix_data
WHERE director IS NOT NULL
GROUP BY director
ORDER BY num_movies DESC
LIMIT 10;
