-- category staging area view. 
with source as (

select * from {{ source('raw_area' , 'category') }}

)
select * from source
        