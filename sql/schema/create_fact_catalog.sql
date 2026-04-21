CREATE TABLE fact_catalog(
    listing_id INT PRIMARY KEY,
    retailer_id INT NOT NULL,
    product_id  INT NOT NULL,
    flavor_id INT NOT NULL,
    pack_size_id INT NOT NULL,
    price DECIMAL(6,2) NOT NULL,
    

    FOREIGN KEY (retailer_id) REFERENCES dim_retailers(retailer_id),
    FOREIGN KEY (product_id) REFERENCES dim_products(product_id),
    FOREIGN KEY (flavor_id) REFERENCES dim_flavors(flavor_id),
    FOREIGN KEY (pack_size_id) REFERENCES dim_pack_sizes(pack_size_id)
);


