-- film staging area view. 
with source as (

select * from {{ source('raw_area' , 'film') }}

)
select * from source
        