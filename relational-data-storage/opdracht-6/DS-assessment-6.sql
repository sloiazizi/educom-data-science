SELECT 
    *
FROM
    Customer
WHERE
    State IN ('RJ' , 'DF', 'AB', 'BC', 'CA', 'WA', 'NY');

# oke ik zie nu uiteraard gelijk welke company maar stel ik wil opzoeken dan:
SELECT 
    Company
FROM
    Customer
WHERE
    FirstName = 'Jack'
        AND LastName = 'Smith';