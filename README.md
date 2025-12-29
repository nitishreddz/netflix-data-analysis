# netflix-data-analysis

raw->staging(views)->dimensional modeling(multiple dim and one fact)incremental tables


materialization in DBT
view->Just SQL table def is stored, no actual data is stored
table->Creates actual table and has data
incremental->Upsert
Ephemeral->Models are not directly built into the daatbase, instead any other model can use this Ephemeral model in it(just like reusable cte) 
Materialized view->Combination of view and table