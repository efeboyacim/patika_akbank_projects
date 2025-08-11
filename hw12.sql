select COUNT(*) from film where length > select avg(length) from film
select count(*) from film where rental_rate = select max(rental_rate) from film
select count(*) from film where rental_rate = select min (rental_rate) from film and replacement_cost = select min(replacement_cost) from film
SELECT customer_id, COUNT(*) AS payment_count
FROM payment
GROUP BY customer_id
ORDER BY payment_count DESC, customer_id ASC;