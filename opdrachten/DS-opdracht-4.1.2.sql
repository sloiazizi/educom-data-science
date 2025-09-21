SELECT 
    s.name, s.straat, s.huisnr, s.postcode, c.name AS plaatsnaam
FROM
    mhl_suppliers s
        INNER JOIN
    mhl_cities c ON s.city_ID = c.id
        INNER JOIN
        #communes wordt dan co
    mhl_communes com ON c.commune_ID = com.id
WHERE
    com.name = 'Steenwijkerland';