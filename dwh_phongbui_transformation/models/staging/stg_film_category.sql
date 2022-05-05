-- film_category staging area view. 
with source as (

select * from {{ source('raw_area' , 'film_category') }}

)
select * from source
