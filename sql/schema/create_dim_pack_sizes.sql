CREATE TABLE dim_pack_sizes(
    pack_size_id INT PRIMARY KEY,
    units_per_pack INT NOT NULL,
    description VARCHAR(25) NOT NULL
);