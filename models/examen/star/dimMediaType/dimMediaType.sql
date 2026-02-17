{{ config(materialized='table', transient=false) }}

with media_type as (
    select * from {{ source('EXAMEN_DATA', 'MEDIATYPE') }}
)

select m.MediaTypeId, m.Name
from media_type m
