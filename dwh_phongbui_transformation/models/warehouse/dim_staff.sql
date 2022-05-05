select s.email,
       s.active,
       s.staff_id,
       s.store_id,
       s.username,
       s.last_name,
       s.address_id,
       s.first_name,
       st.manager_staff_id,
       st.address_id as store_address_is
from {{ ref('stg_staff') }} s
left join {{ ref('stg_store') }} st on s.store_id = st.store_id

