-- store staging area view. 
with source as (

select * from {{ source('raw_area' , 'store') }}

)
select * from source
        