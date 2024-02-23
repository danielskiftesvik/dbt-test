{{
    config(
        materialized = 'table'
    )
}}


with raw_project as (
    select 
    *
    from read_parquet('raw_data/project.parquet')
)

select * from raw_project