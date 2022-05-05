-- staff staging area view.
with source as (

select * from {{ source('raw_area' , 'staff') }}

)
select * from source