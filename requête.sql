SELECT c.customer_id, c.first_name, c.last_name, count(*) as Rentals_customer, address.address, address.city, address.latitude, address.longitude
FROM rental
INNER JOIN customer AS c on rental.customer_id = c.customer_id
INNER JOIN address on address.address_id = c.address_id
GROUP BY c.customer_id, c.first_name
ORDER BY Rentals_customer DESC LIMIT 1;
