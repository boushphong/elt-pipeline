select c.SK_customer,
    p.customer_id,
    p.staff_id,
       p.rental_id,
       p.payment_id,
       p.amount,
    c.customer_id as customer_id_2,
       c.email,
       c.store_id,
       c.last_name,
       c.address_id,
       c.first_name,
       c.create_date
from {{ ref('stg_payment') }} p
left join {{ ref('dim_customer') }} c
on c.customer_id = p.customer_id


