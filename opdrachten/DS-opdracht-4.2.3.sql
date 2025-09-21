#took me 20 min maar we zijn er
SELECT 
    id,
    COALESCE(CASE
                WHEN parent = 0 THEN name
                ELSE (SELECT 
                        name
                    FROM
                        mhl_rubrieken
                    WHERE
                        id = r.parent)
            END,
            name) AS hoofdrubriek,
    CASE
        WHEN parent = 0 THEN ''
        ELSE name
    END AS subrubriek
FROM
    mhl_rubrieken r
ORDER BY hoofdrubriek ASC , subrubriek ASC;