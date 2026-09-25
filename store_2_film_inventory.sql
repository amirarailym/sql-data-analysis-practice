-- Distinct Films Available at Store 2
-- Business question:
-- The manager of Store 2 wants a list of distinct film
-- titles and descriptions currently available in inventory.
-- Tables used:
-- film      : film_id, title, description
-- inventory : inventory_id, film_id, store_id
-- JOIN logic:
-- INNER JOIN keeps films that have a matching inventory record.
-- The inventory table already contains store_id, so the store
-- table is not needed for this query.
-- DISTINCT prevents duplicate films from appearing when
-- Store 2 has multiple inventory copies of the same film.

SELECT DISTINCT
    film.title,
    film.description
FROM film
INNER JOIN inventory
    ON film.film_id = inventory.film_id
    AND inventory.store_id = 2;
