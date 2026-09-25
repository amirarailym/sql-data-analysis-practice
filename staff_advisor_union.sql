-- Combined Staff and Advisor List
-- Business question:
-- Create one list containing all staff members and advisors,
-- including a column identifying whether each person is
-- a staff member or an advisor.
-- Tables used:
-- advisor : first_name, last_name
-- staff   : first_name, last_name
-- UNION combines the results from the two SELECT statements
-- into a single result set.
-- The 'type' column identifies the source of each person.

SELECT
    'advisor' AS type,
    first_name,
    last_name
FROM advisor

UNION

SELECT
    'staff' AS type,
    first_name,
    last_name
FROM staff;
