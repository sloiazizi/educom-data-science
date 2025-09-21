SELECT 
    s.name, s.straat, s.huisnr, s.postcode, p.lat, p.lng
FROM
    mhl_suppliers s
        INNER JOIN #WAAROM HEET HET PC6??? *TABLEFLIP* 
    pc_lat_long p ON s.postcode = p.pc6
ORDER BY p.lat DESC
LIMIT 5;