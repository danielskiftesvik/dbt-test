with raw_orders as (
    select 
    id as order_id,
    customer as customer_id,
    ordered_at as order_date,
    store_id,
    subtotal,
    order_total

    from read_csv('raw_data/raw_orders.csv')
)

select * from raw_orders