select g.Name, count(distinct ft.PlaylistId) as total_playlist_number from {{ ref('factTrack') }} ft
join {{ ref('dimGenre') }} g on g.GenreId = ft.GenreId
join {{ ref('dimAlbum') }} a on a.AlbumId = ft.AlbumId
where a.Prodyear between 2000 and 2009
group by g.GenreId, g.Name
order by total_playlist_number desc
