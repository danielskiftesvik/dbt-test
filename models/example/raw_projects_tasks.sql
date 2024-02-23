{{
    config(
        materialized = 'table'
    )
}}


with raw_project_tasks as (
    select 
    *
    from read_parquet('raw_data/project__tasks.parquet')
)

select * from raw_project_tasks