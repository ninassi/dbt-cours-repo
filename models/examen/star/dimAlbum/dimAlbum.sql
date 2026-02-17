{{ config(materialized='table', transient=false) }}

with album as (
    select * from {{ source('EXAMEN_DATA', 'ALBUM') }}
)

select a.AlbumId, a.Title, a.ProdYear, a.CdNumber 
from album a
