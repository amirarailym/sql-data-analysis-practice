/*
                    MID COURSE PROJECT
                      MAVEN MOVIES

PROJECT OVERVIEW

The company's insurance policy is up for renewal, and the
insurance company's underwriters need updated information
before issuing a new policy.

OBJECTIVE

Use MySQL to extract and analyze data from various tables
in the Maven Movies database to answer the underwriters'
business questions.

Each question can be answered by querying the appropriate
table(s) in the database.

*/

-- QUESTION 1
-- Staff Information
-- Retrieve a list of all staff members, including their
-- first name, last name, email address, and the store
-- identification number where they work.

SELECT
    first_name,
    last_name,
    email,
    store_id
FROM staff;

-- QUESTION 2
-- Inventory by Store
-- Calculate the number of inventory items held at each store.

SELECT
    store_id,
    COUNT(inventory_id) AS inventory_count
FROM inventory
GROUP BY store_id;


-- QUESTION 3
-- Active Customers by Store
-- Calculate the number of active customers associated
-- with each store.

SELECT
    store_id,
    COUNT(
        CASE
            WHEN active = 1 THEN customer_id
            ELSE NULL
        END
    ) AS active_customers
FROM customer
GROUP BY store_id;


-- QUESTION 4
-- Customer Email Addresses
-- Count the number of customer email addresses stored
-- in the database.

SELECT
    COUNT(email) AS customer_email_count
FROM customer;


-- QUESTION 5
-- Film Inventory Diversity
-- Part 1:
-- Calculate the number of unique film titles represented
-- in the inventory of each store.

SELECT
    store_id,
    COUNT(DISTINCT film_id) AS unique_titles
FROM inventory
GROUP BY store_id;


-- Part 2:
-- Calculate the total number of unique film categories.

SELECT
    COUNT(DISTINCT category_id) AS unique_categories
FROM film_category;

-- QUESTION 6
-- Film Replacement Costs
-- Analyze the replacement costs of the films in the database.
-- Find the minimum replacement cost, maximum replacement cost,
-- and average replacement cost across all films.

SELECT
    MIN(replacement_cost) AS minimum_replacement_cost,
    MAX(replacement_cost) AS maximum_replacement_cost,
    AVG(replacement_cost) AS average_replacement_cost
FROM film;


