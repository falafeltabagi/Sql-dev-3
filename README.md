# Patika.dev SQL Ödevi – Ödev 3

Bu sayfada, dvdrental örnek veri tabanı üzerinden verilen SQL sorguları çözümleri ve açıklamaları yer almaktadır.

##  Soru 1  
**country** tablosunda bulunan country isimlerinden:  
'A' karakteri ile başlayıp, 'a' karakteri ile bitenleri listeleyiniz.

```sql
SELECT country FROM country
WHERE country LIKE 'A%a';

## soru 2

SELECT country FROM country
WHERE LENGTH(country) >= 6
  AND country LIKE '%n';

## soru 3

SELECT title FROM film
WHERE LENGTH(LOWER(title)) - LENGTH(REPLACE(LOWER(title), 't', '')) >= 4;

## soru 4

SELECT * FROM film
WHERE title LIKE 'C%'
  AND length > 90
  AND rental_rate = 2.99;
