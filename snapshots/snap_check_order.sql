{% snapshot snap_check_orders %}
{{config(
    strategy='check',
    unique_key='ID',
    check_cols= ['user_id','order_date', 'status']
)}}

select * from {{ref('orders')}} limit 10
{% endsnapshot %}
     