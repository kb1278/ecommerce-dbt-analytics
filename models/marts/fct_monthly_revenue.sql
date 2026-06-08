select
    date_trunc('month', o.order_purchase_timestamp) as month,
    sum(p.payment_value) as revenue,
    count(distinct o.order_id) as orders
from {{ ref('stg_orders') }} o
left join {{ ref('stg_payments') }} p
    on o.order_id = p.order_id
group by 1
order by 1