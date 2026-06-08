select
    order_id,
    payment_type,
    payment_value
from read_csv_auto('data/olist_order_payments_dataset.csv')