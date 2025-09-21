SELECT name, straat, huisnr, postcode 
FROM mhl_suppliers 
WHERE city_ID = (SELECT id FROM mhl_cities WHERE name = 'Amsterdam') 
#in tutorial kan ik != gebruiken
AND p_city_ID != city_ID;