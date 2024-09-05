{% snapshot snap_orders_checks_delete %}
{{config(
    strategy='check',
    unique_key='id',
    check_cols=['user_id', 'order_date', 'status'],
    invalidate_hard_deletes=True
)}}

select * from {{ref("orders")}} limit 10
{% endsnapshot %}

