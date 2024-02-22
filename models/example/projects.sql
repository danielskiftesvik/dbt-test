{{
    config(
        materialized = 'table'
    )
}}


with project as (
    select 
    column1 as customer_id,
    column2 as name
    from read_csv('raw_data/raw_project.csv')
)

select * from customers