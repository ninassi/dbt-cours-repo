select distinct t.Name as track_name, t.Composer, g.Name as genre_name from {{ ref('factTrack') }} ft
join {{ ref('dimTrack') }} t on t.TrackId = ft.TrackId
join {{ ref('dimGenre') }} g on g.GenreId = ft.GenreId
where g.Name in ('Rock','Jazz')
order by g.Name, t.Composer, t.Name