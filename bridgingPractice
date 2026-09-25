-- Actor Filmography
-- Business question:
-- Customers want to know which films their favorite actors appear in.
-- Return a list of actors along with each film title they appear in.
-- Tables used:
-- actor      : actor_id, first_name, last_name
-- film_actor : actor_id, film_id
-- film       : film_id, title
-- film_actor acts as the bridge table between actor and film.

SELECT
    actor.first_name,
    actor.last_name,
    film.title
FROM actor
INNER JOIN film_actor
    ON actor.actor_id = film_actor.actor_id
INNER JOIN film
    ON film_actor.film_id = film.film_id;
