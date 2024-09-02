{{config(materialized='table')}}

with tbl1 as(
    select * from {{source("datafeed_shared_schema",'STG_PAYMENTS')}}
)

select * from tbl1