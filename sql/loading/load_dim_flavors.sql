/*
   \copy grants PosgreSQL permission to read csv file 
*/

COPY dim_flavors 
FROM 'C:/data_raw/retail_pricing-analysis/data/dim_flavors.csv'
DELIMITER ','
CSV HEADER; 



--Validation check for flavor_id
--SELECT fc.listing_id, fc.flavor_id
--FROM fact_catalog fc
--LEFT JOIN dim_flavors f ON fc.flavor_id= f.flavor_id
--WHERE f.flavor_id IS NULL;