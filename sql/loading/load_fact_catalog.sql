/*    
  \copy grants PosgreSQL permission to read csv file 
*/

COPY facts_catalog
FROM 'C:/data_raw/retail_pricing-analysis/data/facts_catalog.csv'
DELIMITER ','
CSV HEADER;


