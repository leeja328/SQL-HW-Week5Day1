--Week 5 - Monday Questions 
--1*. How many actors are there with the last name ‘Wahlberg’? 
-- answer: 2
SELECT COUNT (last_name)
FROM actor
WHERE last_name = 'Wahlberg';


--2*. How many payments were made between $3.99 and $5.99? 
-- answer: 5607
SELECT COUNT (amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99


--3*. What film does the store have the most of? (search in inventory) 
-- answer: Multiple films are tied at 8
SELECT COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;


--4*. How many customers have the last name ‘William’? 
--answer = 0
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William'


--5*. What store employee (get the id) sold the most rentals? 
-- answer = 1 - 8040
SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id



--6*. How many different district names are there? 
-- answer = 378
SELECT COUNT(DISTINCT district)
FROM address


--7*. What film has the most actors in it? 
--(use film_actor table and get film_id) 
-- answer = film_id 508 - 15 actors
SELECT film_id, COUNT(actor_id) as my_count
FROM film_actor
GROUP BY film_id
ORDER BY my_count DESC;

--8*. From store_id 1, how many customers have a last name ending with ‘es’? 
--(use customer table) 
-- answer = 13 or 21?
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es'

--9*. How many payment amounts (4.99, 5.99, etc.) had a number of rentals 
--above 250 for customers  with ids between 380 and 430? 
--(use group by and having > 250) 
-- answer : 3
SELECT COUNT(amount), amount
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(amount) > 250


--10*. Within the film table, how many rating categories are there? 
--And what rating has the most  movies total?
-- answer: 5, PG-13
SELECT DISTINCT rating
FROM film

SELECT COUNT (rating), rating
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC;



