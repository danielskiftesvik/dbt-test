{{
    config(
        materialized = 'table'
    )
}}


with raw_generalledgertransactions as (
    select 
    *
    from read_parquet('raw_data/general_ledger_transactions.parquet')
)

select * from raw_generalledgertransactions