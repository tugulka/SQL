SELECT city.city, country.country FROM city
INNER JOIN country USING (country_id);

SELECT payment.payment_id, customer.first_name, customer.last_name from customer
INNER JOIN payment USING (customer_id);

SELECT rental.rental_id, customer.customer_id, customer.first_name, customer.last_name FROM customer
INNER JOIN rental USING (customer_id);
