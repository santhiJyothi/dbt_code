{{config(materialized='table')}}

with tbl1 as(
    select 
    id,
    first_name,
    last_name
    from {{source("datafeed_shared_schema",'STG_CUSTOMERS')}}
)

select * from tbl1