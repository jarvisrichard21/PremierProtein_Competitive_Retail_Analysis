/*
--Which pack sizes offer the best value per ounce?
--Start with the fact_catalog because pack_size_id and price live there.
SELECT ps. pack_size_id, ps.description, ROUND(MIN(fc.price/(ps.units_per_pack*pd.base_size_oz)),2) AS price_per_ounce
FROM fact_catalog fc
--Join dim_pack_sizes to get pack size description
INNER JOIN dim_pack_sizes ps ON ps.pack_size_id=fc.pack_size_id
INNER JOIN dim_products pd ON fc.product_id= pd.product_id
GROUP BY ps.pack_size_id, ps.description
--Sort out the cheapest for price per unit
ORDER BY price_per_ounce ASC

*/


--2. Do larger pack sizes always offer better value?

--3. Which retailers offer the best value for each pack size?
--Start with the fact_catalog because pack_size_id and price live there.
--Show each unique pack size
--Use MIN to find the lowest price per unit for each pack size 
/*
SELECT ps. pack_size_id, ps.description, ROUND (MIN(fc.price/(ps.units_per_pack*pr.base_size_oz)),2) AS best_price_per_ounce
FROM fact_catalog fc

--JOIN  dim_pack_sizes to the fact_catalog to get pack size descriptions
INNER JOIN dim_pack_sizes ps ON ps.pack_size_id = fc.pack_size_id
--JOIN dim_retailer to the fact_catalog to get retailer_id and name
INNER JOIN dim_retailers r  ON r.retailer_id = fc.retailer_id
--JOIN dim_product to the fact_catalog to get product information and base size
INNER JOIN dim_products pr ON pr.product_id = fc.product_id


 
--GROUP BY 
GROUP BY ps.pack_size_id, ps.description
*/
SELECT r.retailer_id, r.retailer_name
FROM fact_catalog fc
--JOIN  dim_pack_sizes to the fact_catalog to get pack size descriptions
INNER JOIN dim_pack_sizes ps ON ps.pack_size_id = fc.pack_size_id
--JOIN dim_retailer to the fact_catalog to get retailer_id and name
INNER JOIN dim_retailers r  ON r.retailer_id = fc.retailer_id
--JOIN dim_product to the fact_catalog to get product information and base size
INNER JOIN dim_products pr ON pr.product_id = fc.product_id

WHERE ps.kpack_size_id=8;