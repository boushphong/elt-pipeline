{% snapshot snapshot_customer %}

{{
    config(
      target_database='dvd_rental',
      target_schema='snapshots',
      unique_key='customer_id',

      strategy='timestamp',
      updated_at='modified_at',
    )
}}

select md5(concat(c.customer_id,
       c.email,
       c.store_id,
       c.last_name,
       c.address_id,
       c.first_name,
       c.create_date,
       c.modified_at)::TEXT) as SK_CUSTOMER,
       c.customer_id,
       c.email,
       c.store_id,
       c.last_name,
       c.address_id,
       c.first_name,
       c.create_date,
       c.modified_at
from {{ ref('dim_customer') }} c

{% endsnapshot %}