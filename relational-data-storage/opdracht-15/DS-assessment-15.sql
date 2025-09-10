#oke aangezien ik nu combi moet maken eerst naam geven voor track naam en ook voor album
SELECT Track.Name AS TrackName,
    Album.Title AS AlbumName,
    Album.ArtistId,
    Track.TrackId
FROM Track #hier pak je m eerst van track en dan connect je m. dit heb ik van een tutorial wat ik had bekeken before the assessment.
JOIN Album ON Track.AlbumId = Album.AlbumId;