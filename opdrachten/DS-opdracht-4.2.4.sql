SELECT 
    s.name AS 'mhl_suppliers.name',
    pt.name AS 'mhl_propertytypes.name',
    CASE
        WHEN yp.content IS NULL THEN 'NOT SET'
        ELSE yp.content
    END AS 'value'
FROM
    mhl_suppliers s
        JOIN
    mhl_cities c ON s.city_ID = c.id
        JOIN
    mhl_propertytypes pt ON pt.proptype = 'A'
        LEFT JOIN
    mhl_yn_properties yp ON yp.supplier_ID = s.id
        AND yp.propertytype_ID = pt.id
WHERE
    c.name = 'Amsterdam'
ORDER BY s.name , pt.name; 