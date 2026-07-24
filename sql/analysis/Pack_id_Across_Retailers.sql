--GROUP BY — Average price by pack size
--Question:  
--Calculate the average price for each pack_size_id across all retailers.

--Uses: AVG, GROUP BY  
--Tables: fact_catalog  
--(Prices and pack_size_id appear throughout the catalog)


SELECT pack_size_id,
       AVG(price) AS average_price
FROM fact_catalog
GROUP BY pack_size_id;


