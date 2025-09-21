SELECT 
    c1.name,
    c1.id AS c1id,
    c2.id AS c2id,
    c1.commune_ID AS g1id,
    c2.commune_ID AS g2id,
    co1.name AS gemeente_1,
    co2.name AS gemeente_2
FROM
    mhl_cities c1
        INNER JOIN
    mhl_cities c2 ON c1.name = c2.name AND c1.id < c2.id
        INNER JOIN
    mhl_communes co1 ON c1.commune_ID = co1.id
        INNER JOIN
    mhl_communes co2 ON c2.commune_ID = co2.id
WHERE #Waarom....... waarom zijn er nullen als commune_id ????
    c1.commune_ID != 0
        AND c2.commune_ID != 0
ORDER BY c1.name;