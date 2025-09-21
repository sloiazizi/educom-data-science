SELECT 
#hmm zal ik een case gebruiken? of zoals in tabel foto opdracht...
#keuze: zoals opdracht. niet te moeilijk doen 
    c.name, IFNULL(co.name, 'INVALID')
FROM
    mhl_cities c
        LEFT JOIN
    mhl_communes co ON c.commune_ID = co.id;