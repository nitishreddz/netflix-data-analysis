WITH raw_movies AS (
    SELECT * FROM {{source('netflix','raw_movies')}}
)

SELECT
    movieId as movie_id,
    title,
    genre
FROM raw_movies