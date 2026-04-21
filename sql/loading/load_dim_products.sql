/*    
  \copy grants PosgreSQL permission to read csv file 

*/
COPY dim_products 
FROM'C:/data_raw/retail_pricing-analysis/data/dim_products.csv'
DELIMITER ','
CSV HEADER;



--Validation Check for Product_id
--SELECT fc.listing_id, fc.product_id
--FROM fact_catalog fc
--LEFT JOIN dim_products p ON fc.product_id = p.product_id
--WHERE p.product_id IS NULL;
