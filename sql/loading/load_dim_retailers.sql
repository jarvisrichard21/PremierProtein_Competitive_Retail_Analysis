/*
   \copy grants PosgreSQL permission to read csv file 


COPY dim_retailers
FROM 'C:/data_raw/retail_pricing-analysis/data/dim_retailers.csv'
DELIMITER ','
CSV HEADER;

*/

--Validation Check for retail_id

--SELECT fc.listing_id, fc.retailer_id
--FROM fact_catalog fc
--LEFT JOIN dim_retailers r ON fc.retailer_id=r.retailer_id
--WHERE r.retailer_id IS NULL;