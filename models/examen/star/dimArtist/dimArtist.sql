{{ config(materialized='table', transient=false) }}

with artist as (
    select * from {{ source('EXAMEN_DATA', 'ARTIST') }}
)

select a.ArtistId, a.Name, a.BirthYear, a.Country
from artist a
