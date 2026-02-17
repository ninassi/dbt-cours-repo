select distinct a.Title,
    floor(sum(t.Milliseconds / (1000 * 60 * 60 * ft.PlaylistNumber))) % 24 as hours,
    floor(sum(t.Milliseconds / (1000 * 60 * ft.PlaylistNumber))) % 60 as minutes,
    floor(sum(t.Milliseconds / (1000 * ft.PlaylistNumber))) % 60 as secondes 
from {{ ref('factTrack') }} ft
join {{ ref('dimTrack') }} t on t.TrackId = ft.TrackId
join {{ ref('dimAlbum') }} a on a.AlbumId = ft.AlbumId
group by a.AlbumId, a.Title
order by minutes desc limit 10