select ar.Name, count(distinct a.AlbumId) as album_number from {{ ref('factTrack') }} ft
join {{ ref('dimArtist') }} ar on ar.ArtistId = ft.ArtistId
join {{ ref('dimAlbum') }} a on a.AlbumId = ft.AlbumId
group by ar.ArtistId, ar.Name
order by album_number desc, ar.Name