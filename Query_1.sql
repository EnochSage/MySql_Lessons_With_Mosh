# Querying the Store_DB

USE store;
SELECT * FROM store.customers;                    #retrieving all the records in the customers table

-- customer_id, first_name, last_name & birth_date
SELECT customer_id, first_name, last_name, birth_date FROM customers;

-- selecting customers with a specific customer_id number
SELECT * FROM customers WHERE customer_id = 1

-- Using order by (first_name) customers are sorted by their first_name
SELECT * FROM customers ORDER BY first_name; 

-- Using order by (last_name) customers are sorted by their last_name
SELECT * FROM customers ORDER BY last_name; 

-- points are calculated based on their shopping
SELECT last_name, first_name, points FROM customers;

-- calculating additional points (discount) for each customer
SELECT last_name, first_name, points, points+10
 FROM customers;
 
 -- calculating additional points (discount) for each customer
SELECT last_name, first_name, points, (points+10) AS discount
 FROM customers;
 
 -- adding a space btwn the column name discount_factor
 SELECT last_name, first_name, points, (points+10)*100 AS 'discount factor'
 FROM customers;
 
  SELECT state FROM customers;
  --  selecting unique/distinct list of states: Helps remove duplicates
   SELECT DISTINCT state FROM customers;
   
SELECT last_name, first_name, unit_price, unit_price*1.1 AS 'new price' 
FROM store.customers, store.order_items;
   
/* Exercise: Write a SQL Query to return all the products in order database.
You must include the following results in the column set>> name, unit price, new price (unit price*1.1) */

-- answer:
SELECT name, unit_price, unit_price*1.1 AS new_price 
FROM products;
