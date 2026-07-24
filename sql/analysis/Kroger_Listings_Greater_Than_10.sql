--Return all listings from Kroger where the price is greater than 10 dollars.
--SELECT fc.listing_id,fc.retailer_id, fc.price
--FROM fact_catalog fc
--JOIN dim_retailers r ON fc.retailer_id = r.retailer_id 
--WHERE r.retailer_id=1 AND fc.price>10.00 


SELECT *
FROM fact_catalog fc
JOIN dim_retailers dr
    ON fc.retailer_id = dr.retailer_id
WHERE dr.retailer_name = 'Kroger';
