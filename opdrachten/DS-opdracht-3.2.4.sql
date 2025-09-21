SELECT name, straat, huisnr, postcode 
FROM mhl_suppliers 
WHERE city_ID = (SELECT id FROM mhl_cities WHERE name = 'Amsterdam') 
#er staat 'of' postbus denhaag dus dan OR gebruiken 
OR p_city_ID = (SELECT id FROM mhl_cities WHERE name = 'Den Haag');