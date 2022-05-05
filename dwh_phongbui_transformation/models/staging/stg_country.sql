-- country staging area view. 
with source as (

select * from {{ source('raw_area' , 'country') }}

)
select * from source
        