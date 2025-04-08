select 
    order_id,
    customer_id,
    amount
from {{ ref('stg_jaffle_shop__orders') }}
left join {{ ref('stg_stripe__payments') }} using (order_id)