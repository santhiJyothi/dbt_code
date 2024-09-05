{% snapshot customer_timestamp%}
{{config(
    target_schema='snapshot',
    unique_key= 'ID',
    strategy= 'timestamp',
    updated_at='UPDATED_AT',
)}}

select * from {{source("datafeed_shared_schema",'customers')}}
{% endsnapshot %}