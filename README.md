# netflix-data-analysis

raw->staging(views)->dimensional modeling(multiple dim and one fact)incremental tables


materialization in DBT
view->Just SQL table def is stored, no actual data is stored
table->Creates actual table and has data
incremental->Upsert
Ephemeral->Models are not directly built into the daatbase, instead any other model can use this Ephemeral model in it(just like reusable cte) 
Materialized view->Combination of view and table

dbt deps->Install packages for packages mentioned in packages.yml

Snapshots are used to implement SCD-2 in DBT

Testing(Good to define in schema.yml):
1.Generic: In built tests(unique,not null,relationships,accepted values)
2.Singular: Custom tests

In Generic tests->relations->“For every value in this column, does a matching value exist in the parent table?”