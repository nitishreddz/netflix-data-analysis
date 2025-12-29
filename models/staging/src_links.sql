WITH raw_links AS(
    SELECT * FROM {{source('movielens','raw_links')}}
)
SELECT
    movieId AS movie_id,
    imdbId  AS imdb_id,
    tmbId  AS tmb_id
FROM raw_links