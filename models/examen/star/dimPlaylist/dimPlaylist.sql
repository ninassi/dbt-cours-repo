{{ config(materialized='table', transient=false) }}

with playlist as (
    select * from {{ source('EXAMEN_DATA', 'PLAYLIST') }}
)

select p.PlaylistId, p.Name
from playlist p
