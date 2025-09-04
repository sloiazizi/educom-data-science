SELECT 
    *
FROM
    Invoice
WHERE
    CustomerId IN (56 , 58)
        AND Total BETWEEN 1 AND 5;

#oke en nu invoice id van 315 en invoice date = onbekend
SELECT 
    InvoiceDate
FROM
    Invoice
WHERE
    InvoiceId = 315;