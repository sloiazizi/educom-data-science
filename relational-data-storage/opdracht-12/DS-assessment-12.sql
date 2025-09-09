SELECT 
    COUNT(*) AS AlbumsWith12OrMore
FROM
    (SELECT 
        AlbumId
    FROM
        Track
    GROUP BY AlbumId
    HAVING COUNT(*) >= 12) AS sub; #tutorial letsgo
