

-- 1. List all customers who live in Texas (use
-- JOINs)


SELECT * 
FROM customers
INNER JOIN address
ON customers.address = customers.address
WHERE customers.district = 'Texas'
--SPENT OVER AN HOUR... NEED SUPPORT

-- 2. Get all payments above $6.99 with the Customer's Full
-- Name


SELECT*
FROM customers
INNER JOIN payment
ON payment.customers = payment.customers
WHERE payment > 6.99
-- NEED SUPPORT


-- 3. Show all customers names who have made payments over $175(use
-- subqueries)

SELECT*
FROM payment
WHERE payment > 175


SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING sum(amount) > 175
ORDER BY sum(amount)

SELECT first_name, last_name, email
from customer

-- 4. List all customers that live in Nepal (use the city
-- table)

SELECT first_name
from customer 

-- 5. Which staff member had the most
-- transactions?

SELECT SP_ID
FROM SALES_TRANSACTION
--HAVING SUM () struggling here as well
ORDER BY SP_ID DESC

-- 6. How many movies of each rating are
-- there?

SELECT COUNT (rating)
from film
1001

-- 7.Show all customers who have made a single payment
-- above $6.99 (Use Subqueries)

SELECT customer_id
FROM payment
GROUP BY customer_id
HAVING sum(amount) > 6.99
ORDER BY amount DESC


-- 8. How many free rentals did our store give away?

SELECT rental_rate
from film
WHERE rental_rate = 0

None
