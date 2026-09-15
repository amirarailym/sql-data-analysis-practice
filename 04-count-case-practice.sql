-- Count active and inactive customers at each store using COUNT, CASE, and GROUP BY

SELECT
    store_id,
    COUNT(CASE WHEN active = 1 THEN store_id ELSE NULL END) AS active_count,
    COUNT(CASE WHEN active = 0 THEN store_id ELSE NULL END) AS inactive_count
FROM customer
GROUP BY store_id;
