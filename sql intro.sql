-- SQL Introduction Exercise
  -- Using the bestbuy database:
 -- Copy the following and paste into MySql Workbench

-- find all products 
 SELECT * FROM PRODUCTS
-- find all products that cost $1400
  WHERE PRICE = 1400;
-- find all products that cost $11.99 or $13.99
 SELECT * FROM PRODUCTS
 WHERE PRICE = 11.99 OR PRICE = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
 SELECT * FROM PRODUCTS
 WHERE NOT PRICE = 11.99;
-- find  all products and sort them by price from greatest to least
 SELECT * FROM PRODUCTS
 ORDER BY PRICE DESC;
-- find all employees who don't have a middle initial
select * from employees
 where middleinitial IS NULL;
-- find distinct product prices
 select distinct(price) from products;
-- find all employees whose first name starts with the letter ‘j’
 select * from employees
 where firstname LIKE 'j%';
-- find all Macbooks 
 select * from products
 where name like '%macbook%';
-- find all products that are on sale
 select * from products
 where OnSale = 1;
-- find the average price of all products 
 select avg(price) from products;
-- find all Geek Squad employees who don't have a middle initial 
 select * from employees
 where title like '%geek squad%' and middleinitial is null;
-- find all products from the products table whose stock level is in the range  -- of 500 to 1200. Order by Price from least to greatest. **Use the between keyword** 
select * from products
where stocklevel between 500 and 1200
ORDER BY Price asc;