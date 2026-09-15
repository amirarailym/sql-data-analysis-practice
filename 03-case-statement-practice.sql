-- Categorize customers by store and active status

SELECT
    first_name,
    last_name,
    CASE
        WHEN store_id = 1 AND active = 1 THEN 'store 1 active'
        WHEN store_id = 1 AND active = 0 THEN 'store 1 inactive'
        WHEN store_id = 2 AND active = 1 THEN 'store 2 active'
        WHEN store_id = 2 AND active = 0 THEN 'store 2 inactive'
        ELSE 'uh oh check logic'
    END AS store_and_status
FROM customer;
