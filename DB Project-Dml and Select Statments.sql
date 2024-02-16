/*Add a new column "kitchen" of type varchar2(10) to the "food_items" table*/
alter table food_items add kitchen varchar2(10);

/*Modify the data type of the "location" column in the "resturant" table to number(4)*/
alter table resturant modify location number(4);

/*Update the name of the restaurant to "pizza hut" where the restaurant_id is 5*/
update resturant set name='pizza hut'
where resturant_id=2;

/*Delete the restaurant with the name "mcdonalds" from the "resturant" table*/
delete from resturant where name='mcdonalds';

/*Select distinct locations from the "costumer" table and order them in ascending order*/
select DISTINCT location
from costumer
order by location ASC;

/*Select the restaurant name and food name of the cheapest food*/
select r.name as restaurant_name, fi.name as food_name
from resturant r
join resturant_menu rm on r.resturant_id = rm.resturant_id
join food_items fi on rm.food_id = fi.food_id
where rm.price = (select min(price) from resturant_menu);

/*Select the restaurant ID and name of the restaurant with the maximum restaurant ID*/
select resturant_id,name
from resturant
where resturant_id=(select max(resturant_id) from resturant);

/*Select the count of deliverymen*/
select count(del_id)
from deliveryman;

/*Select the average price from the "resturant_menu" table for a specific restaurant ID*/
select avg(price)
from resturant_menu
where resturant_id=4;

/*Select the order ID and the sum of prices for each order from the "orderrr" table*/
select order_id, sum(price)
from orderrr join resturant_menu using (resturant_id, food_id)
group by order_id;

/*Select the names of customers whose names start with 'J'*/
select name
from costumer
where name like 'J%';

/*Select the food ID and price from the "resturant_menu" table where the price is between 10 and 15*/
select food_id, price
from resturant_menu
where price between 10 and 15;

/*Select the names of customers located in 'New York' or 'Los Angeles'*/
select name
from costumer
where location in('New York','Los Angeles');

/*Select the names of restaurants from the "resturant" table where the restaurant ID matches the "resturant_menu" table*/
select name
from resturant natural join resturant_menu 
where resturant_id=3;

/*Select the names of restaurants from the "resturant" table joined with the "resturant_menu" table
*/
select name
from resturant natural join resturant_menu;

/*Select the customer name, order ID, and order date for each customer and their orders*/
SELECT c.name AS customer_name, o.order_id, o.order_date
FROM costumer c
LEFT JOIN orderrr o ON c.cos_id = o.cos_id;

/*to show every costumer and his order*/
select costumer.name,food_items.name,resturant.name
from (costumer natural join orderrr), food_items
where orderrr.food_id=food_items.food_id;


select costumer.name,resturant.name,food_items.name
from orderrr join costumer on orderrr.cos_id=costumer.cos_id
join resturant on resturant.resturant_id=orderrr.resturant_id
join food_items on orderrr.food_id=food_items.food_id;
/*Select the restaurant name and the count of orders for each restaurant, filtering for restaurants with less than 10 orders*/
SELECT r.name AS restaurant_name, COUNT(o.order_id) AS order_count
FROM resturant r
LEFT JOIN orderrr o ON r.resturant_id = o.resturant_id
GROUP BY r.name
HAVING COUNT(o.order_id) < 10;

