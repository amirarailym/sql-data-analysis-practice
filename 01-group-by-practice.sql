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
