-- Film Inventory Details
-- Retrieve each inventory item along with its store,
-- film title, and film description.
-- The inventory and film tables are connected through
-- film_id.
SELECT
    inventory_id,
    store_id,
    title,
    description
FROM inventory
INNER JOIN film
    ON inventory.film_id = film.film_id;
