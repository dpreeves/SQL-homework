
####################################################

#1.a
use sakila

select first_name, last_name from actor; 

#1.b
SELECT CONCAT(first_name, ' ', last_name) AS `Actor Name`

FROM actor;
####################################################

#2.a
SELECT first_name, last_name FROM actor
WHERE first_name = "JOE";

#2.b
SELECT actor_id, first_name, last_name FROM actor
WHERE last_name like '%GEN%';

#2.c
SELECT first_name, last_name
FROM actor
Where last_name LIKE "%LI%"
ORDER BY last_name, first_name;

#2.d
SELECT country_id, country
FROM country 
WHERE country IN 
('Afghanistan', 'Bangladesh', 'China')
####################################################
#3.a
ALTER TABLE actor ADD COLUMN description BLOB;

#3.b
ALTER TABLE actor DROP COLUMN   description;
####################################################
#4.a
SELECT last_name,
COUNT(last_name)
FROM actor
GROUP BY last_name;

#4.b
SELECT last_name,
COUNT(last_name)
FROM actor 
GROUP BY last_name
HAVING COUNT(last_name) > 1;

#4.c
SELECT * FROM actor
WHERE first_name = "GROUCHO"

UPDATE actor
SET first_name = "HARPO"
WHERE actor_id = 172;

#4.d
UPDATE actor
SET first_name = "GROUCHO"
WHERE actor_id = 172;
####################################################
#5.a 
SHOW CREATE TABLE address;
####################################################
#6.a
SELECT first_name, last_name, address
FROM staff
JOIN address 
ON address.address_id = staff.address_id;

#6b.

SELECT first_name, last_name, SUM(amount)
FROM staff
JOIN payment 
ON staff.staff_id = payment.staff_id
WHERE payment.payment_date LIKE "2005-08%"
GROUP BY payment.staff_id;

#6.c
SELECT film.title, 
COUNT(film_actor.actor_id)
FROM film_actor 
INNER JOIN film  
ON film_actor.film_id = film.film_id
GROUP BY title;

#6.d
SELECT * FROM film
WHERE title = "HUNCHBACK IMPOSSIBLE";

SELECT COUNT(inventory.film_id) AS "HUNCHBACK_COPIES"
FROM Inventory 
Where film_id = 439;


