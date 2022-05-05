-- inventory staging area view. 
with source as (

select * from {{ source('raw_area' , 'inventory') }}

)
select * from source
        