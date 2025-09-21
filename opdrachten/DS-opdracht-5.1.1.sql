SELECT 
    COUNT(*) AS 'COUNT(hitcount)',
    AVG(hitcount) AS 'AVG(hitcount)',
    MIN(hitcount) AS 'MIN(hitcount)',
    MAX(hitcount) AS 'MAX(hitcount)',
    SUM(hitcount) AS 'SUM(hitcount)'
FROM
    mhl_hitcount;