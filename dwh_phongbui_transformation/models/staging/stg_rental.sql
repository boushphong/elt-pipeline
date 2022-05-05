-- rental staging area view. 
with source as (

select * from {{ source('raw_area' , 'rental') }}

)
select * from source
        