#pfff dit is een lastige hmmm
SELECT 
    s.name, s.straat, s.huisnr, s.postcode
FROM
    mhl_suppliers s
        INNER JOIN
    mhl_cities c ON s.city_ID = c.id
        INNER JOIN
    mhl_suppliers_mhl_rubriek_view srv ON s.id = srv.mhl_suppliers_ID
        INNER JOIN
    mhl_rubrieken r ON srv.mhl_rubriek_view_ID = r.id
WHERE
    c.name = 'Amsterdam'
        AND r.name LIKE '%drank%'
ORDER BY r.name , s.name;

#okay maar goed opdracht zegt ook sub categ. dus i guess parent nummer 235??

SELECT 
    r.name, s.name, s.straat, s.huisnr, s.postcode
FROM
    mhl_suppliers s
        INNER JOIN
    mhl_cities c ON s.city_ID = c.id
        INNER JOIN
    mhl_suppliers_mhl_rubriek_view srv ON s.id = srv.mhl_suppliers_ID
        INNER JOIN
    mhl_rubrieken r ON srv.mhl_rubriek_view_ID = r.id
WHERE
    c.name = 'Amsterdam'
        AND (r.id = 235 OR r.parent = 235) #235 voor drank en dan parent ook 235
ORDER BY r.name , s.name;



