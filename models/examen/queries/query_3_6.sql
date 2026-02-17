select ar.Name, count(distinct ft.TrackId) as track_number from {{ ref('factTrack') }} ft
join {{ ref('dimArtist') }} ar on ar.ArtistId = ft.ArtistId
join {{ ref('dimTrack') }} t on t.TrackId = ft.TrackId
group by ar.ArtistId, ar.Name
order by track_number desc, ar.Name