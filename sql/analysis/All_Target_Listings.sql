--JOIN — List all Target listings with product & flavor names
--Question:  
--Return all listings sold at Target, including the product name and flavor name.

--Uses: JOIN, WHERE  
--Tables: fact_catalog, dim_products, dim_flavors, dim_retailers  
--(Target has retailer_id = 4)

SELECT fc.listing_id,r.retailer_name, pd.brand_name, f.flavor_name
FROM fact_catalog fc

JOIN dim_retailers r ON fc.retailer_id= r.retailer_id
JOIN dim_products pd ON fc.product_id= pd.product_id 
JOIN dim_flavors f  ON fc.flavor_id=f.flavor_id
WHERE fc.retailer_id =4;