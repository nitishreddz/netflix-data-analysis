{% macro no_nulls_in_columns(model) %}

WITH null_counts AS (

    SELECT
        {% for col in adapter.get_columns_in_relation(model) %}
            SUM(CASE WHEN {{ col.name }} IS NULL THEN 1 ELSE 0 END)
            {% if not loop.last %}+{% endif %}
        {% endfor %}
        AS total_nulls
    FROM {{ model }}

)

SELECT *
FROM null_counts
WHERE total_nulls > 0

{% endmacro %}
