WITH raw_genome_scores AS(
    SELECT * FROM {{source('movielens','raw_genome_scores')}}
)
SELECT
    movieId AS movie_id,
    tagId AS tag_id,
    relevance
FROM raw_genome_scores