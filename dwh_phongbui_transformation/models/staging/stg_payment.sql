-- payment staging area view. 
with source as (

select * from {{ source('raw_area' , 'payment') }}

)
select * from source
        