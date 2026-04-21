CREATE TABLE fact_promotions(
    promo_id INT PRIMARY KEY,
    listing_id INT NOT NULL,
    retailer_id INT NOT NULL,
    promo_type VARCHAR(50) NOT NULL,
    promo_value VARCHAR(50) NOT NULL,
    promo_price NUMERIC (6,2) NOT NULL,
    start_date DATE NOT NULL,
    end_date   DATE NOT NULL,

FOREIGN KEY (listing_id) REFERENCES fact_catalog(listing_id),
FOREIGN KEY (retailer_id) REFERENCES dim_retailers(retailer_id)






);