select distinct a.Title as Album, CdNumber, t.Name as "Title (track)"  from {{ ref('factTrack') }} ft
join {{ ref('dimTrack') }} t on t.TrackId = ft.TrackId
join {{ ref('dimAlbum') }} a on a.AlbumId = ft.AlbumId
where a.CdNumber > 1
order by a.CdNumber desc, a.Title, t.Name