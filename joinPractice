-- JOIN PRACTICE
-- Question: List all film titles and determine how many actors
-- are associated with each film.
-- film: title, film_id
-- film_actor: actor_id, film_id
-- Connection: film_id

SELECT
    title,
    COUNT(film_actor.actor_id) AS number_of_actors
FROM film
LEFT JOIN film_actor
    ON film.film_id = film_actor.film_id
GROUP BY title;
