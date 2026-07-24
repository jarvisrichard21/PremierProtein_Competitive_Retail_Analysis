--Question:  
--Count how many listings each retailer has in the fact_catalog table.

--This uses:

--COUNT(*)

--GROUP BY retailer_id




SELECT r.retailer_name, COUNT(*) AS retailer_count
FROM fact_catalog fc 
JOIN dim_retailers r 
    ON fc.retailer_id=r.retailer_id
GROUP BY r.retailer_name;