{{config(materialized='view')}}

with tbl1 as(
    select 
    id,
    user_id,
    order_date,
    status
    from {{source("datafeed_shared_schema",'STG_ORDERS')}}
)

select * from tbl1