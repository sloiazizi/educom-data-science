SELECT 
    h.hitcount,
    s.name AS leverancier,
    ci.name AS stad,
    co.name AS gemeente,
    d.name AS provincie
FROM
    mhl_hitcount h
        INNER JOIN
    mhl_suppliers s ON h.supplier_ID = s.id
        INNER JOIN
    mhl_cities ci ON s.city_ID = ci.id
        INNER JOIN
    mhl_communes co ON ci.commune_ID = co.id
        INNER JOIN
    mhl_districts d ON co.district_ID = d.id
WHERE
    h.year = 2014 AND h.month = 1
    #uhm best erg dat ik zuid-holland had meegenomen in het begin oops
        AND d.name IN ('Noord-Brabant' , 'Limburg', 'Zeeland');