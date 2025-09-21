SELECT 
    s.name,
    SUM(h.hitcount) AS numhits,
    COUNT(*) AS nummonths,
    AVG(h.hitcount) AS avgpermonth
FROM
    mhl_hitcount h
        JOIN
    mhl_suppliers s ON h.supplier_ID = s.id
GROUP BY s.id , s.name
HAVING SUM(h.hitcount) > 100
ORDER BY numhits DESC;