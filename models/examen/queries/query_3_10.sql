select distinct g.Name,
    floor(avg(t.Bytes / (1024 * 1024 * ft.PlaylistNumber))) % 1024 as MBytes,
    floor(avg(t.Bytes / (1024 * ft.PlaylistNumber))) % 1024 as KBytes,
    avg(t.Bytes / ft.PlaylistNumber) % 1024 as Bytes
from {{ ref('factTrack') }} ft
join {{ ref('dimTrack') }} t on t.TrackId = ft.TrackId
join {{ ref('dimGenre') }} g on g.GenreId = ft.GenreId
group by g.GenreId, g.Name
order by g.Name