{{ config(materialized='table', transient=false) }}

with genre as (
    select * from {{ source('EXAMEN_DATA', 'GENRE') }}
)

select g.GenreId, g.Name
from genre g
