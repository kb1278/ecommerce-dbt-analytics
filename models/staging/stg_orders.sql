select
    order_id,
    customer_id,
    order_status,
    order_purchase_timestamp
from read_csv_auto('data/olist_orders_dataset.csv')