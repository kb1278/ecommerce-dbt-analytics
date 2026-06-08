select
    o.order_id,
    o.order_purchase_timestamp,
    p.payment_value
from {{ ref('stg_orders') }} o
left join {{ ref('stg_payments') }} p
    on o.order_id = p.order_id