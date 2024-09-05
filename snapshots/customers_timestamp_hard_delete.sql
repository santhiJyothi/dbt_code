{% snapshot customer_timestamp_hard_delete %}
{{
    config(
        strategy='timestamp',
        updated_at='UPDATED_AT',
        unique_key='ID',
        invalidate_hard_deletes=True

    )
}}

select * from {{ source('datafeed_shared_schema', 'customers') }}
{% endsnapshot %}