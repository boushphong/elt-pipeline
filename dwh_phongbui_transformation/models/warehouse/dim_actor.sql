select md5(ROW(a.actor_id, a.first_name, a.last_name, fa.film_id)::TEXT) as SK_Actor,
       a.actor_id,
       a.first_name,
       a.last_name,
       fa.film_id
from {{ ref('stg_actor') }} a
left join {{ ref('stg_film_actor') }} fa
on a.actor_id = fa.actor_id