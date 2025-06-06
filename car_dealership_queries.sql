-- testing
USE car_dealership;

SELECT * FROM dealerships;

SELECT * FROM vehicles AS v 
JOIN inventory AS i
JOIN dealerships AS d
ON v.vin = i.vin AND i.dealership_id = d.dealership_id
WHERE name LIKE "City Auto Mall";

SELECT * FROM vehicles 
WHERE vin LIKE '%K%';

SELECT name FROM dealerships AS d
JOIN inventory AS i
ON i.dealership_id = d.dealership_id
WHERE vin LIKE "%K%";

SELECT name FROM dealerships AS d
JOIN inventory AS i
JOIN vehicles AS v
ON d.dealership_id = i.dealership_id AND i.vin = v.vin
WHERE type LIKE "sedan";

SELECT * FROM sales_contracts AS sc
JOIN inventory AS i
JOIN dealerships AS d
ON sc.vin = i.vin AND i.dealership_id = d.dealership_id
WHERE d.name LIKE "%city%" AND sc.sale_date BETWEEN '2024-12-01' AND '2024-12-20' ;


