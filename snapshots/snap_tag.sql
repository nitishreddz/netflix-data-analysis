{% snapshot snap_tags %}
{{
    config(
        target_schema ='snapshots',
        unique_key=['user_id','movie_id','tag'],
        strategy='timestamp',
        updated_at='tag_timestamp',
        invaliddate_hard_deletes =True
    )
}}

SELECT
    {{dbt_utils.generate_surrogate_key(['user_id','movie_id','tag'])}} AS row_key,
    user_id,
    movie_id,
    tag,
    TO_TIMESTAMP_LTZ(tag_timestamp) AS tag_timestamp
FROM {{ref('src_tags')}}

{% endsnapshot%}