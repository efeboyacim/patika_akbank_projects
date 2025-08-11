select * from country where country like 'A%a'
select * from country where country like '_____%n'
SELECT title FROM film WHERE (LENGTH(LOWER(title)) - LENGTH(REPLACE(LOWER(title), 't', ''))) >= 4;
SELECT * FROM film WHERE title LIKE 'C%' AND "length" > 90 AND rental_rate = 2.99;
