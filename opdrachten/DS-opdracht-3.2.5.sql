SELECT name, straat, huisnr, postcode 
FROM mhl_suppliers 
#between kan gebruikt worden hier
WHERE huisnr BETWEEN 10 AND 20;