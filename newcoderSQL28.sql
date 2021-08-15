/*SELECT c.name, count(cc.film_id)
FROM 
(SELECT f.film_id, f.description, fc.category_id
 FROM film f
 INNER JOIN film_category fc ON f.film_id = fc.film_id
 GROUP BY fc.category_id
 HAVING COUNT(fc.category_id) >=5) AS cc
INNER JOIN category c ON cc.category_id = c.category_id
WHERE cc.description LIKE '%robot%'*/

SELECT c.name AS name, COUNT(f.film_id) AS amount
FROM film AS f, film_category AS fc, category AS c,
(SELECT category_id FROM film_category GROUP BY category_id HAVING COUNT(category_id) >= 5) AS cc
WHERE f.description LIKE '%robot%'
AND f.film_id = fc.film_id
AND fc.category_id = c.category_id
AND c.category_id = cc.category_id