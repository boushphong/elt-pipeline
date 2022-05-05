-- film_language staging area view. 
with source as (

select * from {{ source('raw_area' , 'film_language') }}

)
select * from source
        