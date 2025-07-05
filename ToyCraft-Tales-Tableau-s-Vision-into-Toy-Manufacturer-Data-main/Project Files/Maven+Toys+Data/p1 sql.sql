

-- LOAD DATA LOCAL INFILE '[FILE PATH REDACTED]/sales.csv' INTO TABLE sales
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\r\n'
-- IGNORE 1 LINES

select 
	sale_id, 
    product_id,
    count(units)
FROM sales
where product_id = 1;



select * from products;


-- CREATE TEMPORARY TABLE units_by_store6
CREATE PROCEDURE store_overview_by_products AS (
SELECT
	stores.store_name AS store_name,
    products.Product_Name AS product_name,
	count(sales.units) AS total_units_sold,
    products.product_cost AS product_cost,
    products.product_price AS product_price,
    round(count(sales.units)*product_cost, 2) AS total_cost,
    round(count(sales.units)*product_price, 2) AS total_revenue,
	round(count(sales.units)*product_price - count(sales.units)*product_cost, 2) AS total_profit
FROM sales
LEFT JOIN stores 
	ON sales.store_id = stores.store_id
LEFT JOIN products 
	ON sales.product_id = products.product_id
GROUP BY sales.Store_ID, sales.product_id
ORDER BY sales.store_id
)
GO;





select * FROM units_by_store4;

select 
	store_name, 
    product_name, 
    total_units_sold,
    product_cost,
    total_units_sold*product_cost as total_cost,
    total_units_sold*product_price as total_revenue


from units_by_store5;

select * from stores;

select * from products;

-- store by products quantity (stock on hand) 
select 
	stores.store_name,
    products.product_name,
    inventory.Stock_On_Hand
	
from stores
LEFT join products
ON stores.store_id = products.product_id
INNER JOIN inventory
ON products.product_id = inventory.product_id
group by stores.store_name, products.product_name
order by stores.store_id;

-- location based high level stats
-- create temporary table fixlater
select 
-- 	sales.store_id as store_id,
	stores.store_location as store_location,
--     sales.product_id as product_id,
--     products.Product_Name as product_name,
--     count(units) OVER (partition by sales.units) as total_units_sold, 
-- 	count(inventory.stock_on_hand),
	count(sales.units) as total_units_sold,
--     products.product_cost as product_cost,
--     products.product_price as product_price,
--     products.product_cost-products.product_price as product_profit
    round(count(sales.units)*product_cost, 2) as total_cost,
    round(count(sales.units)*product_price, 2) as total_revenue,
	round(count(sales.units)*product_price - count(sales.units)*product_cost, 2) as total_profit
    
from sales
left join stores on sales.store_id = stores.store_id
left join products on sales.product_id = products.product_id
-- left join inventory on sales.store_id = inventory.store_id
group by stores.Store_location
order by stores.store_location;

-- city performance

select 
-- 	sales.store_id as store_id,
	stores.store_location as store_location,
	stores.store_city as store_city,
--     sales.product_id as product_id,
--     products.Product_Name as product_name,
--     count(units) OVER (partition by sales.units) as total_units_sold, 
-- 	count(inventory.stock_on_hand),
	count(sales.units) as total_units_sold,
--     products.product_cost as product_cost,
--     products.product_price as product_price,
--     products.product_cost-products.product_price as product_profit
    round(count(sales.units)*product_cost, 2) as total_cost,
    round(count(sales.units)*product_price, 2) as total_revenue,
	round(count(sales.units)*product_price - count(sales.units)*product_cost, 2) as total_profit
    
from sales
left join stores on sales.store_id = stores.store_id
left join products on sales.product_id = products.product_id
-- left join inventory on sales.store_id = inventory.store_id
group by stores.store_location, stores.Store_city
order by stores.store_location;

select * from stores;
select * from products;
select * from inventory;