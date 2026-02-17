{{ config(materialized='table', transient=false) }}

with track as (
    select * from {{ source('EXAMEN_DATA', 'TRACK') }}
)

select t.TrackId, t.Name, t.Composer, t.Milliseconds, t.Bytes, t.UnitPrice
from track t
