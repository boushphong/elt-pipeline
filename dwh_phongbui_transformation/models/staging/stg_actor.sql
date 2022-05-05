-- actor staging area view. 
with source as (

select * from {{ source('raw_area', 'actor') }}

)
select * from source

        