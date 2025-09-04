SELECT 
    *
FROM
    invoice
WHERE
    BillingCity IN ('Brasilia' , 'Edmonton', 'Vancouver')
ORDER BY InvoiceId;

#uhm oke ja aflopende volgorde in tutorial was desc 
SELECT 
    *
FROM
    invoice
WHERE
    BillingCity IN ('Brasilia' , 'Edmonton', 'Vancouver')
ORDER BY InvoiceId DESC;

#wat is total van eerste regel ? oke so select total en dan limit toepassen toch
SELECT 
    Total
FROM
    invoice
WHERE
    BillingCity IN ('Brasilia' , 'Edmonton', 'Vancouver')
ORDER BY InvoiceId DESC
LIMIT 1; 