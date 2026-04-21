/*
   \copy grants PostgreSQL permission to read csv file

*/

COPY fact_promotions
FROM 'C:\data_raw\retail_pricing-analysis\data\fact_promotions.csv'
DELIMITER ','
CSV HEADER;

--Validation Check for fact_promotion
--SELECT fp.promo_id, fp.listing_id
--FROM fact_promotions fp
--LEFT JOIN fact_catalog fc ON fp.listing_id = fc.listing_id
--WHERE fc.listing_id IS NULL;