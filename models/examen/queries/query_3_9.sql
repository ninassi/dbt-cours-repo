select distinct ar.Country, ar.Name as artist_name, t.Name as track_name, t.TrackId from {{ ref('factTrack') }} ft
join {{ ref('dimArtist') }} ar on ar.ArtistId = ft.ArtistId
join {{ ref('dimTrack') }} t on t.TrackId = ft.TrackId
join {{ ref('dimGenre') }} g on g.GenreId = ft.GenreId
where ar.Country = 'France' and g.Name = 'Rock'
order by t.Name