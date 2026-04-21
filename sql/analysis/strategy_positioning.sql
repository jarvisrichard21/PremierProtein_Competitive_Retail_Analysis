--Which retailer shows the highest price variability (standard deviation) across listings?
--Start with fact_catalog
/* 
--Compute the avg for each retailer 
SELECT r.retailer_name, ROUND (AVG(fc.price) ,1) AS "avg_price_retailer"
FROM fact_catalog fc
--Join dim retailers to fact_catalog
JOIN dim_retailers r ON fc.retailer_id= r.retailer_id
GROUP BY r.retailer_name;
--Find the standard deviation for each retailer
SELECT r.retailer_name, ROUND(STDDEV(fc.price),1)
FROM fact_catalog fc
JOIN dim_retailers r ON fc.retailer_id= r.retailer_id
GROUP BY r.retailer_id, r.retailer.id
*/



--
--For identical products, which retailers are consistently more expensive or cheaper?
/*
--Identify and GROUP identical SKUs: product_id, flavor_id, pack_size_id,

SELECT pd.product_id,pd. product_line, f.flavor_id, f.flavor_name, ps.pack_size_id, ps.description, MAX(fc.price), MIN(fc.price)
FROM fact_catalog fc
JOIN dim_products pd ON fc.product_id= pd.product_id
JOIN dim_pack_sizes ps ON fc.pack_size_id= ps.pack_size_id
JOIN dim_flavors f ON fc.flavor_id= f.flavor_id
JOIN dim_retailers r ON fc.retailer_id= r.retailer_id
GROUP BY pd.product_id, f.flavor_id, ps.pack_size_id

--COUNT ONLY product listings where a DISTINCT retailer appears more than once
HAVING COUNT(DISTINCT r.retailer_id)>1


--Find the retailer with the most expensive products
SELECT r.retailer_id, r.retailer_name
FROM fact_catalog fc
JOIN dim_products pd ON fc.product_id= pd.product_id
JOIN dim_pack_sizes ps ON fc.pack_size_id= ps.pack_size_id
JOIN dim_flavors f ON fc.flavor_id= f.flavor_id
JOIN dim_retailers r ON fc.retailer_id= r.retailer_id
WHERE fc.price= 31.99 
*/
--Find the retailer with the least expensive products
SELECT r.retailer_id, r.retailer_name
FROM fact_catalog fc
JOIN dim_products pd ON fc.product_id= pd.product_id
JOIN dim_pack_sizes ps ON fc.pack_size_id= ps.pack_size_id
JOIN dim_flavors f ON fc.flavor_id= f.flavor_id
JOIN dim_retailers r ON fc.retailer_id= r.retailer_id
WHERE fc.price= 9.58 






--Are there any retailers pricing below cost-competitve levels (outliers)?






