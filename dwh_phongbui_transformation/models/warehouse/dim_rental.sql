select r.rental_id,
       f.rental_rate,
       i.inventory_id,
       f.film_id,
       f.title,
       f.rating,
       f.language_id,
       f.release_year,
       f.rental_duration,
       f.replacement_cost,
       fc.category_id,
       c.category_name,
       fl.language_name,
       f.modified_at
from {{ ref('stg_film') }} f
left join {{ ref('stg_film_category') }} fc on f.film_id = fc.film_id
left join {{ ref('stg_category') }} c on fc.category_id = c.category_id
left join {{ ref('stg_film_language') }} fl on f.language_id = fl.language_id
right join {{ ref('stg_inventory') }} i on f.film_id = i.film_id
right join {{ ref('stg_rental') }} r on r.inventory_id = i.inventory_id