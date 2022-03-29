-- Joins 

-- AS Statements

SELECT column_name AS new_column_name FROM table_name;

-- Joins: INNER JOIN / OUTER JOIN

-- In the below example, column_a and column_c are the primary and foreign key respectively
(i.e. that rows match in order for us to join the table on that column).
 
SELECT table_a.column_a, table_a.column_b, table_b.column_c, table_b.column_d,
FROM table_a
INNER JOIN table_b 
ON table_a.column_a = table_b.column_c; 

-- Example Question: We wish to find out the quantity of each movie store 1 holds, display the 
information in a single table:
 
SELECT title, COUNT(title) AS Copies
FROM film
INNER JOIN inventory ON film.film_id = inventory.film_id
WHERE store_id = 1
GROUP BY title
ORDER BY count(title) DESC; 

-- UNION Statements 

SELECT column_1, columns_2
FROM table_name_1
UNION
SELECT column_1, column_2
FROM table_name_2; 

-- Advanced SQL Commands 
-- Overview: Mathematical functions, Timestamps and the extract function, string functions and operators,
-- subquery, self-joins

-- Timestamp 
-- In the below query UFD stands for Unit From Date, e.g. day/dow/doy/week/year

SELECT column_1_name 
EXTRACT(UFD from column_2_name)
FROM table_name;

-- Example Question: In what month did we have our highest revenue? What was the total revenue for that month?

SELECT SUM(amount) AS total, extract(month FROM payment_date) AS month
FROM payment
GROUP BY month
ORDER BY total DESC
LIMIT 1;

-- Mathematical Functions (for numerical column types)
-- 'operator' in the below query will be a mathematical operator such as + , - , x , / ... etc 

SELECT column_1_name operator column_2_name AS column_new FROM table_name;

-- String functions and operators 

SELECT first_name || ' ' || last_name AS Full_Name FROM customer;
SELECT first_name, char_length(first_name) FROM customer;
SELECT upper(first_name), upper(last_name) FROM customer;

-- Subquery (A query within a query)
-- Example Questions: Find the films whose rental rate is higher than the average rental rate 

SELECT title, rental_rate FROM film WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);

-- Example Question: Extract all the films that were returned between the dates of 29th May and 30th May

SELECT film_id, title
FROM film
WHERE film_id IN 
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id 
WHERE
return_date between '2005-05-29' AND '2005-05-30') ORDER BY film_id;

-- SELF JOIN (Combining rows with other rows in the same table)

SELECT alias1.column_1_name
FROM table_name AS alias1, table_name AS alias2
WHERE alias1.column_2_name= alias2.column_2_name
AND alias2.column_1_name = 'string/number';

-- Example Question: Find the customers who share the same first name with other customers last name

SELECT x.customer_id, x.first_name, x.last_name, y.customer_id, y.first_name, y.last_name
FROM customer AS x, customer AS y
WHERE x.first_name = y.last_name;

SELECT x.customer_id, x.first_name, x.last_name, y.customer_id, y.first_name, y.last_name 
FROM customer as x
JOIN customer as y
ON x.first_name = y.last_name;