with source as (

select * from {{ source('raw_area' , 'customer') }}

)
select * from source
