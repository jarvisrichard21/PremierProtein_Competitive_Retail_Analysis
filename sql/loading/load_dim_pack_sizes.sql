/*    
  \copy grants PosgreSQL permission to read csv file 


COPY dim_pack_sizes
FROM 'C:/data_raw/retail_pricing-analysis/data/dim_pack_sizes.csv'
DELIMITER ','
CSV HEADER;



--Validation Check for pack_size_id
--SELECT fc.listing_id, fc.pack_size_id
--FROM fact_catalog fc
--LEFT JOIN dim_pack_sizes ps ON fc.pack_size_id=ps.pack_size_id
--WHERE ps.pack_size_id is NULL;