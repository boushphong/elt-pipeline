-- city staging area view.
with source as (

select * from {{ source('raw_area' , 'city') }}

)
select * from source
        