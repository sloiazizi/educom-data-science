SELECT 
    *
FROM
    Track
WHERE
    Milliseconds >= 5000000;

# okay je kunt ook count gebruiken voor n songs die hiervoor passen
SELECT 
    COUNT(*)
FROM
    Track
WHERE
    Milliseconds >= 5000000;
    