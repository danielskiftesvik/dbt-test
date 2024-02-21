{{
    config(
        materialized = 'table'
    )
}}


with customers as (
    select 
    column1 as customer_id,
    column2 as name
    from read_csv('raw_data/raw_customers.csv')
    where column1 <> 'id'
)

select * from customers