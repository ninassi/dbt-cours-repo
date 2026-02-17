select distinct pl.Name, pl.PlaylistId from {{ ref('factTrack') }} ft
join {{ ref('dimPlaylist') }} pl on pl.PlaylistId = ft.PlaylistId
join {{ ref('dimTrack') }} t on t.TrackId = ft.TrackId
where (t.Milliseconds / (60 * 1000)) > 4
order by pl.Name, pl.PlaylistId