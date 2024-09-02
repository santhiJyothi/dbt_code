{{config(materialized='table')}}

select id,
       Name,
       ({{adding('salary','tax')}}) as total_salary
from {{source("datafeed_shared_schema",'Emp1')}}