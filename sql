-- YET ANOTHER CASE WHEN PROBLEM :D

-- Return the titles and descriptions of all films, with a new column "Holiday",
-- that contains the holiday referenced in the film, if any, otherwise is blank.
-- all holiday's welcome :) 




-- EXAMPLE: 
-- title: "Fiction Christmas" -> 'Christmas'
-- description: "The story of a chritmas elf who ...." --> 'Christmas'
-- "Something About Mary" --> ""



WITH holiday_film AS (
SELECT title, description,
CASE 
WHEN title ILIKE '%Christmas%' OR  description ILIKE '%Christmas%' THEN 'Christmas'
WHEN(title ILIKE '%Santa%') OR description ILIKE '%Christmas%' THEN 'Christmas'
WHEN(title ILIKE '%Thanksgiving%') OR description ILIKE '%Thanksgiving%'THEN 'Thanksgiving'
WHEN(title ILIKE '%Halloween%') OR description ILIKE '%Halloween%' THEN 'Halloween'
END AS holiday
FROM
film)
SELECT
holiday_film.title, holiday_film.description, holiday_film.holiday
FROM
holiday_film;






-- BONUS: return all of the holiday films first, and sort all films with their 
-- respective holiday category in alphabetical order.

WITH holiday_film AS (
SELECT title, description,
CASE 
WHEN title ILIKE '%Christmas%' OR  description ILIKE '%Christmas%' THEN 'Christmas'
WHEN title ILIKE '%Santa%' OR description ILIKE '%Santa%' THEN 'Christmas'
WHEN title ILIKE '%Thanksgiving%' OR description ILIKE '%Thanksgiving%'THEN 'Thanksgiving'
WHEN title ILIKE '%Halloween%' OR description ILIKE '%Halloween%' THEN 'Halloween'
END AS holiday
FROM
film)
SELECT
holiday_film.title, holiday_film.description, holiday_film.holiday
FROM
holiday_film
WHERE holiday IS NOT NULL
ORDER BY
holiday_film.holiday;

-- BONUS BONUS:
-- Our marketing team is doing a holiday promo. All holiday films 1/2.
-- Can you return the same results, but with the price reflecting the discount?

-- Feel free to peek at your previous warmup to remind yourself of the syntax.




