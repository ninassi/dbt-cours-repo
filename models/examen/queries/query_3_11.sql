select distinct pl.Name, pl.PlaylistId from {{ ref('factTrack') }} ft
join {{ ref('dimArtist') }} ar on ar.ArtistId = ft.ArtistId
join {{ ref('dimPlaylist') }} pl on pl.PlaylistId = ft.PlaylistId
where ar.Birthyear < 1990
order by pl.Name