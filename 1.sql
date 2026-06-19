CREATE TABLE supply_chain_data (
    product_type VARCHAR(50),
    sku VARCHAR(20),
    price DECIMAL(10,2),
    availability INT,
    number_of_products_sold INT,
    revenue_generated DECIMAL(12,2),
    customer_demographics VARCHAR(50),
    stock_levels INT,
    lead_times INT,
    order_quantities INT,
    shipping_times INT,
    shipping_carriers VARCHAR(50),
    shipping_costs DECIMAL(10,2),
    supplier_name VARCHAR(100),
    location VARCHAR(100),
    lead_time INT,
    production_volumes INT,
    manufacturing_lead_time INT,
    manufacturing_costs DECIMAL(10,2),
    inspection_results VARCHAR(50),
    defect_rates DECIMAL(10,4),
    transportation_modes VARCHAR(50),
    routes VARCHAR(50),
    costs DECIMAL(12,2)
);
SELECT
SUM(Revenue_Generated)
FROM supply_chain;
SELECT *
FROM supply_chain
WHERE Stock_Levels < 50;SELECT
Supplier_Name,
AVG(Lead_Time) AS Avg_Lead_Time
FROM supply_chain
GROUP BY Supplier_Name
ORDER BY Avg_Lead_Time;SELECT
Product_Type,
SUM(Number_of_Products_Sold)
FROM supply_chain
GROUP BY Product_Type
ORDER BY SUM(Number_of_Products_Sold) DESC;