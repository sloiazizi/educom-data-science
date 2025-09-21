#waarom zit dat in godsnaam in property type??? wat een bagger db sorry rene jeeeezus
#heeft mij echt 10 min gekost om 't te vinden omdat ik dacht "bro i seen it somewhere..."
SELECT 
    s.name, s.straat, s.huisnr, s.postcode
FROM
    mhl_suppliers s
        INNER JOIN
    mhl_yn_properties p ON s.id = p.supplier_ID
        INNER JOIN
    mhl_propertytypes pt ON p.propertytype_ID = pt.id
WHERE
    pt.name = 'specialistische leverancier'
        OR pt.name = 'ook voor particulieren';