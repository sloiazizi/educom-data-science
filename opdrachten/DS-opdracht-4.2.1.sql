SELECT 
    name, commune_ID
FROM
    mhl_cities
WHERE 
    commune_ID = 0 OR commune_ID IS NULL; 