SELECT rating, COUNT(*) FROM film GROUP BY rating ORDER BY COUNT(*) DESC;
SELECT replacement_cost, COUNT(title) FROM film GROUP BY replacement_cost HAVING COUNT(replacement_cost) > 50 ORDER BY replacement_cost;
SELECT store_id, COUNT(customer_id) FROM customer GROUP BY store_id;
SELECT country_id, COUNT(city) FROM city GROUP BY country_id ORDER BY COUNT(city) DESC;
