SELECT 
    *
FROM
    Invoice
WHERE
    Total BETWEEN 5 AND 15;

#ook hier kunnen we count gebruiken...
SELECT 
    count(*)
FROM
    Invoice
WHERE
    Total BETWEEN 5 AND 15;