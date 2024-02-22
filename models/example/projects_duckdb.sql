{{
    config(
        materialized = 'table'
    )
}}


with projects as (
    select 
    *
    -- from {{ source('duckdb', 'project') }}
    from {{ source('external_source', 'project') }}
)

select * from projects