select distinct a.ProdYear, a.Title, t.Name from {{ ref('factTrack') }} ft
join {{ ref('dimTrack') }} t on t.TrackId = ft.TrackId
join {{ ref('dimAlbum') }} a on a.AlbumId = ft.AlbumId
where a.Prodyear in (2000,2002)
order by a.ProdYear, a.Title, t.Name