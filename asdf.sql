-- Very first SQL Query, SELECT all records from the actor table
SELECT *
FROM actor;

-- Query for first_name and last_name from the actor table.
SELECT first_name, last_name
FROM actor;

-- Query for a first_name that equals Nick using the WHERE clause
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- Query for a first_name that is equal to Nick using the LIKE and Where clauses
SELECT first_name, last_name 
FROM actor 
WHERE first_name LIKE 'Nick';

-- Query for all first_name data that starts with a J using the LIKE and WHERE clauses
-- and using the wildcard %
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'J%';

-- Query for all first_name data that starts with K and has 2 letters
-- immediately following using LIKE and WHERE and __
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'K__';

-- Query for all first_name data that starts with a K and ends with th
-- using the LIKE and WHERE clauses 
-- using Both the wildcard % and underscores __
SELECT first_name, last_name, actor_id
FROM actor
WHERE first_name LIKE 'K__%th'

-- Comparing operators:
-- Greater Than (>) -- Less Than (<)
-- Greater Than or Equal (>=) -- Less or Equal (>=)
-- Not Equal (<>)

-- Explore Data with SELECT ALL Query (Specific to changing into a new table)
--SELECT*
FROM payment;

-- Query for customers who paid an amount GREATER THAN $2.00
SELECT customer_id, amount
FROM payment
WHERE amount > 3.00;

-- Query for customers who paid an amount LESS THAN $7.99
SELECT customer_id, amount 
FROM payment
WHERE amount < 7.99;

-- Query for customers who paid an amount less than or equal to $7.99
SELECT customer_id, amount
FROM payment
WHERE amount <= 7.99;


-- Query for customers that paid an amount >= 2.00 in ascending order
SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount ASC;

-- Query for customers who paid an amount b/t 2.00 and 7.99
-- using the between and with clause
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2.00 and 7.99;

-- Query for customers that paid an amount != 0 in desc order
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;


-- SQL Aggregations => SUM(), AVE(), COUNT(), MIN(), MAX()

-- Query to display sum of amounts payed greater than 5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;


-- Query to display avg. of amounts payed that are > 5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the COUNT of amounts payed that are > 5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the COUNT of DISTINCT amouts payed that are > 5.99
-- removes dups
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

-- Query to display min about > 7.99
-- so you can replace that second amount as Min_Num_Payments
SELECT MIN(amount) AS Min_Num_Payments
FROM payment
WHERE amount > 7.99;

-- Query to display max amount > 7.99
SELECT MAX(amount) as Max_Num_Payments
FROM payment
WHERE amount > 7.99;


-- Query to display all amounts ( set up for GROUP By)
SELECT amount
FROM payment
WHERE amount = 7.99;

-- Query to display different amounts grouped together
SELECT amount, COUNT (amount)
FROM payment
GROUP BY amount
ORDER BY COUNT (amount);

-- Query to display customer_ids with the summed amounts fro each customer_id
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

-- Query to display customer_ids with the summed amounts for each customer_id
-- Seperate example -- a different way to use GROUP BY
SELECT customer_id, amount
FROM payment
GROUP BY amount, customer_id
ORDER BY customer_id DESC;

-- Query to explore the data inside of the customer table
SELECT *
FROM customer;


-- Query to display customer_ids that show up more than 5 times
-- GROUP BY the customer's email
-- Set specific email criteria
SELECT COUNT (customer_id), email
FROM customer
WHERE email LIKE 'j__.w%'
GROUP BY email
HAVING COUNT (customer_id) > 0;

-- This helps see whats in the tables
SELECT *
FROM address;




