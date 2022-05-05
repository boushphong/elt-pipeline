-- film_actor staging area view.
with source as (

select * from {{ source('raw_area' , 'film_actor') }}

)
select * from source