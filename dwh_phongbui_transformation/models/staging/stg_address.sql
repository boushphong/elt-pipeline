-- address staging area view. 
with source as (

select * from {{ source('raw_area' , 'address') }}

)
select * from source
        