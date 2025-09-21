SELECT 
    s.name, s.straat, s.huisnr, s.postcode
FROM
#oke so suppliers krijgt s en cities krijgt c anders te veel gedoe
    mhl_suppliers s
        INNER JOIN
    mhl_cities c ON s.city_ID = c.id
WHERE
    c.name = 'Amsterdam';