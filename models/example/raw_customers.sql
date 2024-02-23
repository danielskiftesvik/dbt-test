{{
    config(
        materialized = 'table'
    )
}}


with raw_customers as (
    select 
    *
    from read_parquet('raw_data/customer.parquet')
)

select * from raw_customers