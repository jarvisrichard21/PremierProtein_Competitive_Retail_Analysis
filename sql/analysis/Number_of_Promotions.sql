




--SUM — Total promotional value by retailer
--Question:  
--Calculate the total number of promotions and the sum of promo_price for each retailer.

--Uses: SUM, COUNT, GROUP BY  
--Tables: fact_promotions, dim_retailers  
--(Promo_price appears in every promotion row)


SELECT r.retailer_name, COUNT(*) AS totalPromotions, sum(fp.promo_price) AS sum_promotion
FROM fact_promotions fp
JOIN dim_retailers r ON fp.retailer_id= r.retailer_id
GROUP BY r.retailer_name;