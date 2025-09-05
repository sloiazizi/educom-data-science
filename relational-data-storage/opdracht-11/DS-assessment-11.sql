SELECT 
    CustomerId, COUNT(*) AS NumberOfOrders
FROM
    Invoice
GROUP BY CustomerId
ORDER BY NumberOfOrders DESC;