select a.phone,
       a.address,
       a.city_id,
       c.city,
       c.country_id,
       c2.country,
       address2,
       a.district,
       a.address_id,
       a.postal_code
from {{ ref('stg_address') }} a
left join {{ ref('stg_city') }} c on a.city_id = c.city_id
left join {{ ref('stg_country') }} c2 on c.country_id = c2.country_id