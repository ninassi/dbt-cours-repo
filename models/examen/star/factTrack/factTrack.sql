{{ config(materialized='table', transient=false) }}

with track as (
    select * from {{ source('EXAMEN_DATA', 'TRACK') }}
),
playlistTrack as (
    select * from {{ source('EXAMEN_DATA', 'PLAYLISTTRACK') }}
),
album as (
    select * from {{ source('EXAMEN_DATA', 'ALBUM') }}
),
playlist as (
    select * from {{ source('EXAMEN_DATA', 'PLAYLIST') }}
),
tmp as (
    select t.TrackId, t.MediaTypeId, t.AlbumId, t.GenreId, a.ArtistId, count(plt.PlaylistId) as PlaylistNumber
    from track t
    left join playlistTrack plt on t.TrackId = plt.TrackId
    join playlist p on p.PlaylistId = plt.PlaylistId
    join album a on a.AlbumId = t.AlbumId
    group by t.TrackId, t.MediaTypeId, t.AlbumId, t.GenreId, a.ArtistId
)

select j.ArtistId, j.MediaTypeId, j.GenreId, plt1.PlaylistId, j.AlbumId, j.TrackId, j.PlaylistNumber from tmp j
left join playlistTrack plt1 on j.TrackId = plt1.TrackId
