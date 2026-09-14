-- List film titles, lengths, and rental rates
-- Sort films from longest to shortest

SELECT 
    title,
    length,
    rental_rate
FROM film
ORDER BY length DESC;
