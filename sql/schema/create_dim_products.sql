CREATE TABLE dim_products(
    product_id INT primary key,
    brand_name VARCHAR(50),
    product_line VARCHAR (50),
    base_size_oz DECIMAL(4,1),
    package_type VARCHAR (50)
);