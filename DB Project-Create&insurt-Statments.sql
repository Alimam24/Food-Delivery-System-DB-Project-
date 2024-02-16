create table costumer(
cos_id number(5) primary key,
name varchar2(15),
phone_number number(10),
location varchar2(20)
);
create table resturant(
resturant_id number(5) primary key,
name varchar2(15),
phone_number number(10),
location varchar2(20),
discreption varchar2(100)
);
create table food_items(
food_id number(5) primary key,
name varchar2(15)
);
create table resturant_menu(
food_id number(5) ,
resturant_id number(5),
price number(5),
primary key(food_id,resturant_id),
foreign key (food_id) references food_items,
foreign key (resturant_id) references resturant
);
create table deliveryman(
del_id number(5) primary key,
name varchar2(15),
phone_number number(10),
vehicle varchar2(10)
);
create table payment_method(
paym_id number(2) primary key,
paym_name varchar2(15)
);
create table orderrr(
order_id number(5) primary key,
resturant_id number(5),
cos_id number(5),
food_id number(5),
del_id number(5),
order_date date,
paym_id number(2),
foreign key (food_id,resturant_id) references resturant_menu,
foreign key (cos_id) references costumer,
foreign key (paym_id) references payment_method,
foreign key (del_id) references deliveryman
);

-- Inserting into costumer table
INSERT INTO costumer (cos_id, name, phone_number, location) VALUES (1, 'John Doe', 1234567890, 'New York');
INSERT INTO costumer (cos_id, name, phone_number, location) VALUES (2, 'Jane Smith', 9876543210, 'Los Angeles');
INSERT INTO costumer (cos_id, name, phone_number, location) VALUES(3, 'Michael Johnson', 5551234567, 'Chicago');
INSERT INTO costumer (cos_id, name, phone_number, location) VALUES(4, 'Emily Davis', 7778889999, 'Houston');
INSERT INTO costumer (cos_id, name, phone_number, location) VALUES(5, 'Chris Wilson', 4443332222, 'Miami');
INSERT INTO costumer (cos_id, name, phone_number, location) VALUES(6, 'Amanda Brown', 6667778888, 'San Francisco');
INSERT INTO costumer (cos_id, name, phone_number, location) VALUES(7, 'Daniel Martinez', 9998887777, 'Seattle');
INSERT INTO costumer (cos_id, name, phone_number, location) VALUES(8, 'Sarah Anderson', 1112223333, 'Boston');
INSERT INTO costumer (cos_id, name, phone_number, location) VALUES(9, 'Kevin Taylor', 4445556666, 'Dallas');
INSERT INTO costumer (cos_id, name, phone_number, location) VALUES(10, 'Laura Garcia', 2221110000, 'Phoenix');
  
-- Inserting into resturant table
INSERT INTO resturant (resturant_id, name, phone_number, location) VALUES (1, 'Tasty Burger', 1112223333, 'New York');
INSERT INTO resturant (resturant_id, name, phone_number, location) VALUES(2, 'Pizza Palace', 4445556666, 'Los Angeles');
INSERT INTO resturant (resturant_id, name, phone_number, location) VALUES(3, 'Sushi Express', 7778889999, 'Chicago');
INSERT INTO resturant (resturant_id, name, phone_number, location) VALUES(4, 'Taco Time', 1234567890, 'Houston');
INSERT INTO resturant (resturant_id, name, phone_number, location) VALUES(5, 'Pasta Paradise', 5551234567, 'Miami');
INSERT INTO resturant (resturant_id, name, phone_number, location) VALUES(6, 'Burger Barn', 6667778888, 'San Francisco');
INSERT INTO resturant (resturant_id, name, phone_number, location) VALUES(7, 'Chicken Coop', 9998887777, 'Seattle');
INSERT INTO resturant (resturant_id, name, phone_number, location) VALUES(8, 'Subway Station', 2221110000, 'Boston');
INSERT INTO resturant (resturant_id, name, phone_number, location) VALUES(9, 'Deli Delight', 8889990000, 'Dallas');
INSERT INTO resturant (resturant_id, name, phone_number, location) VALUES(10, 'Smoothie Shack', 3334445555, 'Phoenix');

-- Inserting into food_items table
INSERT INTO food_items (food_id, name) VALUES (1, 'Burger');
INSERT INTO food_items (food_id, name) VALUES(2, 'Pizza');
INSERT INTO food_items (food_id, name) VALUES(3, 'Sushi');
INSERT INTO food_items (food_id, name) VALUES(4, 'Taco');
INSERT INTO food_items (food_id, name) VALUES(5, 'Pasta');
INSERT INTO food_items (food_id, name) VALUES(6, 'Chicken');
INSERT INTO food_items (food_id, name) VALUES(7, 'Sub');
INSERT INTO food_items (food_id, name) VALUES(8, 'Deli Sandwich');
INSERT INTO food_items (food_id, name) VALUES(9, 'Smoothie');
INSERT INTO food_items (food_id, name) VALUES(10, 'Salad');

-- Inserting into restutants_menu table
INSERT INTO restutants_menu (food_id, resturant_id, price) VALUES(1, 1, 10);
INSERT INTO restutants_menu (food_id, resturant_id, price) VALUES(2, 2, 12);
INSERT INTO restutants_menu (food_id, resturant_id, price) VALUES(3, 3, 15);
INSERT INTO restutants_menu (food_id, resturant_id, price) VALUES(4, 4, 8);
INSERT INTO restutants_menu (food_id, resturant_id, price) VALUES(5, 5, 14);
INSERT INTO restutants_menu (food_id, resturant_id, price) VALUES(6, 6, 9);
INSERT INTO restutants_menu (food_id, resturant_id, price) VALUES(7, 7, 7);
INSERT INTO restutants_menu (food_id, resturant_id, price) VALUES(8, 8, 6);
INSERT INTO restutants_menu (food_id, resturant_id, price) VALUES(9, 9, 5);
INSERT INTO restutants_menu (food_id, resturant_id, price) VALUES(10, 10, 11);

-- Inserting into deliveryman table
INSERT INTO deliveryman (del_id, name, phone_number, vehicle) VALUES(1, 'Mike Johnson', 1231231234, 'Car');
INSERT INTO deliveryman (del_id, name, phone_number, vehicle) VALUES(2, 'Sarah Smith', 4564564567, 'Bike');
INSERT INTO deliveryman (del_id, name, phone_number, vehicle) VALUES(3, 'Chris Davis', 7897897890, 'Scooter');
INSERT INTO deliveryman (del_id, name, phone_number, vehicle) VALUES(4, 'Emily Wilson', 1112223334, 'Car');
INSERT INTO deliveryman (del_id, name, phone_number, vehicle) VALUES(5, 'Alex Brown', 4445556667, 'Bike');
INSERT INTO deliveryman (del_id, name, phone_number, vehicle) VALUES(6, 'Jessica Martinez', 7778889990, 'Scooter');
INSERT INTO deliveryman (del_id, name, phone_number, vehicle) VALUES(7, 'David Anderson', 9990001113, 'Car');
INSERT INTO deliveryman (del_id, name, phone_number, vehicle) VALUES(8, 'Laura Taylor', 2223334446, 'Bike');
INSERT INTO deliveryman (del_id, name, phone_number, vehicle) VALUES(9, 'Daniel Garcia', 5556667779, 'Scooter');
INSERT INTO deliveryman (del_id, name, phone_number, vehicle) VALUES(10, 'Olivia Clark', 8889990002, 'Car');

-- Inserting into payment_method table
INSERT INTO payment_method (paym_id, paym_name) VALUES(1, 'Cash');
INSERT INTO payment_method (paym_id, paym_name) VALUES(2, 'Credit Card');
INSERT INTO payment_method (paym_id, paym_name) VALUES(3, 'PayPal');
INSERT INTO payment_method (paym_id, paym_name) VALUES(4, 'Venmo');
INSERT INTO payment_method (paym_id, paym_name) VALUES(5, 'Bitcoin');
INSERT INTO payment_method (paym_id, paym_name) VALUES(6, 'Apple Pay');
INSERT INTO payment_method (paym_id, paym_name) VALUES(7, 'Google Pay');
INSERT INTO payment_method (paym_id, paym_name) VALUES(8, 'Samsung Pay');
INSERT INTO payment_method (paym_id, paym_name) VALUES(9, 'Stripe');
INSERT INTO payment_method (paym_id, paym_name) VALUES(10, 'Square');

-- Inserting into orderrr table
INSERT INTO orderrr (order_id, resturant_id, cos_id, food_id, del_id, order_date,paym_id) VALUES(1, 3, 1, 1, 1, date'2023-12-25', 2);
INSERT INTO orderrr (order_id, resturant_id, cos_id, food_id, del_id, order_date, paym_id) VALUES(2, 2, 2, 2, 2, date'2023-12-25', 3);
INSERT INTO orderrr (order_id, resturant_id, cos_id, food_id, del_id, order_date, paym_id) VALUES(3, 3, 3, 3, 3, date'2023-12-25', 1);
INSERT INTO orderrr (order_id, resturant_id, cos_id, food_id, del_id, order_date, paym_id) VALUES(4, 4, 4, 4, 4, date'2023-12-25', 4);
INSERT INTO orderrr (order_id, resturant_id, cos_id, food_id, del_id, order_date, paym_id) VALUES(5, 5, 5, 5, 5, date'2023-12-25', 2);
INSERT INTO orderrr (order_id, resturant_id, cos_id, food_id, del_id, order_date, paym_id) VALUES(6, 6, 6, 6, 6, date'2023-12-25', 3);
INSERT INTO orderrr (order_id, resturant_id, cos_id, food_id, del_id, order_date, paym_id) VALUES(7, 7, 7, 7, 7,date'2023-12-25', 1);
INSERT INTO orderrr (order_id, resturant_id, cos_id, food_id, del_id, order_date, paym_id) VALUES(8, 8, 8, 8, 8, date'2023-12-25', 4);
INSERT INTO orderrr (order_id, resturant_id, cos_id, food_id, del_id, order_date, paym_id) VALUES(9, 9, 9, 9, 9, date'2023-12-25', 2);
INSERT INTO orderrr (order_id, resturant_id, cos_id, food_id, del_id, order_date, paym_id) VALUES(10, 10, 10, 10, 10,date '2023-12-25', 3);
