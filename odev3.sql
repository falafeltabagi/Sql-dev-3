-- TABLO OLUŞTURMA

CREATE TABLE country (
    country_id INT,
    country VARCHAR(50)
);

INSERT INTO country VALUES
(1, 'Argentina'),
(2, 'Albania'),
(3, 'Aruba'),
(4, 'Afghanistan'),
(5, 'Brazil'),
(6, 'Pakistan'),
(7, 'Sudan'),
(8, 'Finland'),
(9, 'Denmark');

CREATE TABLE film (
    film_id INT,
    title VARCHAR(255),
    length INT,
    rental_rate DECIMAL(4,2)
);

INSERT INTO film VALUES
(1, 'Tornado Titans', 95, 2.99),
(2, 'The Tall Tale', 88, 2.99),
(3, 'Ghost Trap', 120, 4.99),
(4, 'Titan Test', 90, 0.99),
(5, 'Calm Chaos', 91, 2.99),
(6, 'Caribbean Nights', 92, 2.99),
(7, 'TNT Time', 105, 2.99),
(8, 'Cactus Thunder', 100, 2.99),
(9, 'Comedy Circle', 85, 2.99);

-- SORGULAR

-- Soru 1
SELECT country FROM country
WHERE country LIKE 'A%a';

-- Soru 2
SELECT country FROM country
WHERE LENGTH(country) >= 6
  AND country LIKE '%n';

-- Soru 3
SELECT title FROM film
WHERE LENGTH(LOWER(title)) - LENGTH(REPLACE(LOWER(title), 't', '')) >= 4;

-- Soru 4
SELECT * FROM film
WHERE title LIKE 'C%'
  AND length > 90
  AND rental_rate = 2.99;
