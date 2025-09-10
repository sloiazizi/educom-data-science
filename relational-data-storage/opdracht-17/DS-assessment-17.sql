SELECT Artist.ArtistId,
		Artist.Name
FROM Artist
#........................idk tbh ff google. 
#okay left join kan gebruikt worden? want het pakt alles van linker kant 
#en als er geen waarde is dan wordt er null gegeven voor albums

LEFT JOIN Album ON Artist.ArtistId = Album.ArtistId
WHERE Album.AlbumId IS NULL;

#lets gooo it works oke en nu twee regels met zelfde achternaam?
# its been 10min idk how to find this.. 
