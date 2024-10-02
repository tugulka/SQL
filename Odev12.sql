-- 1. Soru
SELECT COUNT(*) FROM film
WHERE length > ALL(
	SELECT AVG(length)	FROM film
);
--

-- 2. Soru
SELECT COUNT(*) FROM film
WHERE rental_rate = ALL(
	SELECT MAX(rental_rate) FROM film
) ;
--

-- 3. Soru
SELECT * FROM film
WHERE rental_rate = (
SELECT MIN(rental_rate)FROM film
) 
AND 
replacement_cost=(
SELECT MIN(replacement_cost) FROM film
);
--

-- 4. Soru
SELECT customer.customer_id, customer.first_name, customer.last_name, customer.email, COUNT(payment_id) FROM payment
INNER JOIN customer ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
ORDER BY COUNT(payment.customer_id) DESC;
