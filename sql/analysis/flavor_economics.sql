

/*
--Which flavors are the most expensive and least expensive on average?

--Start with fact_catalog because that's where prices live/
SELECT fc.flavor_id, f.flavor_name , fc.price
FROM fact_catalog fc
--Join to dim flavors on flavor_id so flavor names are shown.
INNER JOIN dim_flavors f ON fc.flavor_id = f.flavor_id

--Group the data by flavor_id(and by flavor_name.)
--GROUP BY fc.flavor_id, fc.price, f.flavor_id, f.flavor_name

--Compute the average price for each flavor
--Sort the results to find the highest and lowest average
--ORDER BY AVG(price) DESC;



--Which flavors show the largest price spread across retailers? 

 
--Start with the fact_catalog because that's where flavor_id and price live.
--Pull flavor_name and Compute Difference in High Price and Low Price  
SELECT f.flavor_name, MAX(price)-MIN(price) AS "Price Spread"
FROM fact_catalog fc
--Match flavor_id from the dim_flavor table to the dim_flavor column in the fact_catalog
INNER JOIN dim_flavors f ON f.flavor_id = fc.flavor_id
GROUP BY fc.flavor_id, f.flavor_id, f.flavor_name
-Place the  highest price spread
ORDER BY MAX(price)DESC;


--Are certain flavors consistently premium-priced regardless of retailer?
-- Start from the fact_catalog table because the retail_id, price and flavor_id live there. Flavors 
SELECT r.retailer_name, f.flavor_name, AVG(fc.price) AS avg_price
FROM fact_catalog fc
--Match flavor_id from the dim_flavors table to dim_flavor column in fact_catalog, Match retailer_id from dim_retailers to fact_catalog 
INNER JOIN dim_flavors f ON f.flavor_id=fc.flavor_id
INNER JOIN dim_retailers r ON r.retailer_id = fc.retailer_id
GROUP BY  r.retailer_name, f.flavor_name
--Place the highest priced flavor
ORDER BY r.retailer_name, avg_price DESC; 



*/
--Which flavors are most widely available across retailers? 
--Which flavors are rare or under-distributed?
SELECT f. flavor_name, COUNT(DISTINCT fc.retailer_id) AS retailer_count
FROM fact_catalog fc
INNER JOIN dim_flavors f ON fc.flavor_id = f.flavor_id
GROUP BY f.flavor_name
ORDER BY retailer_count DESC;





