/*I need to get a quick overview of how 
long our movies tend to be rented out for.
Pull a count of titles sliced by rental duration.*/
-- rental durations days: 6,3,7,5,4 days strict
-- count of films that get rented for those days
SELECT 
  rental_duration, -- we have to group by rental duration
COUNT(film_id) AS films_with_this_rental_duration
FROM film
GROUP BY rental_duration


/* Practice: Analyze rental rates by replacement cost

Question:
Is the rental rate higher for films with a higher replacement cost?

For each replacement cost:
- Count the films
- Find the average rental rate
- Find the minimum rental rate
- Find the maximum rental rate
*/

SELECT 
    replacement_cost,
    COUNT(film_id) AS count_of_films,
    AVG(rental_rate) AS average_rental_rate,
    MIN(rental_rate) AS cheap_rental_rate,
    MAX(rental_rate) AS expensive_rental_rate
FROM film
GROUP BY replacement_cost;

-- Find customers who have rented fewer than 15 times
-- Group rentals by customer, then count each customer's rentals

SELECT 
    customer_id,
    COUNT(rental_id) AS total_rentals
FROM rental
GROUP BY customer_id
HAVING COUNT(*) < 15;
