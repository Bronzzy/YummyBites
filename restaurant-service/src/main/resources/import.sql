-----INSERT DATA INTO RESTAURANT-----
INSERT INTO restaurant (address,closing_hour,"name",open_hour,phone) values ('4089 Charing Cross Drive','22:00:00','YummyBites','11:00:00','341-724-5075');



-----INSERT DATA INTO EMPLOYEE-----
INSERT INTO employee (address,dob,email,first_name,last_name,phone,status,restaurant) values('1318 Prentice Circle','1995-11-09','hoabinh0911@gmail.com','Dao','Binh','932-524-1590','STATUS_ACTIVE',1);
INSERT INTO employee (address,dob,email,first_name,last_name,phone,status,restaurant) values('456 Elm Street','1990-03-15','john.doe@gmail.com','John','Doe','555-671-8923','STATUS_ACTIVE',1);
INSERT INTO employee (address,dob,email,first_name,last_name,phone,status,restaurant) values('789 Oak Avenue','1988-07-22','jane.smith@yahoo.com','Jane','Smith','987-564-1230','STATUS_ACTIVE',1);
INSERT INTO employee (address,dob,email,first_name,last_name,phone,status,restaurant) values('123 Maple Lane','1992-09-02','michael.johnson@hotmail.com','Michael','Johnson','123-456-7890','STATUS_ACTIVE',1);
INSERT INTO employee (address,dob,email,first_name,last_name,phone,status,restaurant) values('567 Pine Road','1994-12-18','emily.williams@outlook.com','Emily','Williams','902-345-8716','STATUS_ACTIVE',1);
INSERT INTO employee (address,dob,email,first_name,last_name,phone,status,restaurant) values('890 Birch Court','1987-05-07','robert.brown@gmail.com','Robert','Brown','456-789-1023','STATUS_ACTIVE',1);
INSERT INTO employee (address,dob,email,first_name,last_name,phone,status,restaurant) values('234 Cedar Avenue','1991-01-25','mary.jones@yahoo.com','Mary','Jones','874-512-3069','STATUS_ACTIVE',1);
INSERT INTO employee (address,dob,email,first_name,last_name,phone,status,restaurant) values('678 Walnut Street','1989-08-12','david.miller@hotmail.com','David','Miller','789-630-1245','STATUS_ACTIVE',1);
INSERT INTO employee (address,dob,email,first_name,last_name,phone,status,restaurant) values('901 Spruce Drive','1993-04-30','linda.davis@gmail.com','Linda','Davis','654-890-2371','STATUS_ACTIVE',1);
INSERT INTO employee (address,dob,email,first_name,last_name,phone,status,restaurant) values('345 Aspen Lane','1996-06-08','james.wilson@yahoo.com','James','Wilson','987-456-1023','STATUS_ACTIVE',1);
INSERT INTO employee (address,dob,email,first_name,last_name,phone,status,restaurant) values('789 Hickory Road','1990-10-17','susan.anderson@outlook.com','Susan','Anderson','789-012-3456','STATUS_ACTIVE',1);
INSERT INTO employee (address,dob,email,first_name,last_name,phone,status,restaurant) values('123 Fir Avenue','1992-02-28','william.jackson@gmail.com','William','Jackson','456-781-9023','STATUS_ACTIVE',1);
INSERT INTO employee (address,dob,email,first_name,last_name,phone,status,restaurant) values('567 Sycamore Court','1994-07-14','patricia.moore@yahoo.com','Patricia','Moore','678-901-2345','STATUS_ACTIVE',1);
INSERT INTO employee (address,dob,email,first_name,last_name,phone,status,restaurant) values('890 Poplar Lane','1988-12-01','richard.martin@hotmail.com','Richard','Martin','890-123-4567','STATUS_ACTIVE',1);
INSERT INTO employee (address,dob,email,first_name,last_name,phone,status,restaurant) values('234 Oak Drive','1991-03-20','jennifer.wilson@gmail.com','Jennifer','Wilson','789-012-3456','STATUS_ACTIVE',1);
INSERT INTO employee (address,dob,email,first_name,last_name,phone,status,restaurant) values('678 Maple Avenue','1993-09-10','charles.thompson@yahoo.com','Charles','Thompson','456-789-0231','STATUS_ACTIVE',1);



-----INSERT DATA INTO USER-----
INSERT INTO users (active,"password",username,employee_id) VALUES(true,'$2a$10$pqOhvZAlb9u4/YopxQ4w7OP99t62tOR1mBTX6zuJcBtBKz8y7y06y','hoabinh0911@gmail.com',1);
INSERT INTO users (active,"password",username,employee_id) VALUES(true,'$2a$10$n7d6AZ32SAoKr3Vq4Cit/e9vDjdGsJILGYnUrdtanZoUGCqbIL7XW','john.doe@gmail.com',2);
INSERT INTO users (active,"password",username,employee_id) VALUES(true,'$2a$10$fWRYNts7oTISHGW0V4srmeQPmSCFswhYNeIskF99SkYdeitsZ1h6S','jane.smith@yahoo.com',3);
INSERT INTO users (active,"password",username,employee_id) VALUES(true,'$2a$10$vpN8.BIZwM7uLVUBZIbJ1.tkKUBhi/CMnCMNkfQdt1CASu6oR1k.i','michael.johnson@hotmail.com',4);
INSERT INTO users (active,"password",username,employee_id) VALUES(true,'$2a$10$Y2rjxtcU.u0UffSVUOFj0udjd0qGD8K0A9dBMfvRMOZGF4T.w0FWq','emily.williams@outlook.com',5);
INSERT INTO users (active,"password",username,employee_id) VALUES(true,'$2a$10$i.D.TwTybUSRI/kjB490b.GqKSeuFBMpcqqZae.remw5tCE1CLyk2','robert.brown@gmail.com',6);
INSERT INTO users (active,"password",username,employee_id) VALUES(true,'$2a$10$ZmrHcGbbd3gKYPFla2veKOnWDclpSLcvRx1d3IGXu829WUgQ0urjO','mary.jones@yahoo.com',7);
INSERT INTO users (active,"password",username,employee_id) VALUES(true,'$2a$10$fDhEP0DceiIihv0m/QZ1XusBRAI22TE7ij2WOFnFWkjdHezYfy6vK','david.miller@hotmail.com',8);
INSERT INTO users (active,"password",username,employee_id) VALUES(true,'$2a$10$gWiRgaq5lVH8WjAs8xI./eAp9Epjy8QqhvwBGOQMzyndcV4P9B5oO','linda.davis@gmail.com',9);
INSERT INTO users (active,"password",username,employee_id) VALUES(true,'$2a$10$tOLwFLm9pHUmg/bCDlEWYeYzX1t4j5rZrI6bX9WuyP.PJVdZmnHzK','james.wilson@yahoo.com',10);
INSERT INTO users (active,"password",username,employee_id) VALUES(true,'$2a$10$WgroL1rfofS5B3/pGpGxg.9y45Ltvka5N2sK8iSrBDsfLRHPAlJQC','susan.anderson@outlook.com',11);
INSERT INTO users (active,"password",username,employee_id) VALUES(true,'$2a$10$fS/bT56f/OjDv4kqkJv2Nue0FfdVBz5JxmDAQLNKAS8Cs.gyglX1S','william.jackson@gmail.com',12);
INSERT INTO users (active,"password",username,employee_id) VALUES(true,'$2a$10$xUCdM9yHu7W7D.7uUXj05e.g45eRebchUKkRsUh5Ybrg6o84ZVKjy','patricia.moore@yahoo.com',13);
INSERT INTO users (active,"password",username,employee_id) VALUES(true,'$2a$10$fQ36t2wp4kHaBHOk3bgVU.KP7qGUoC5HOIukX8tF9ht3sNr7DXO/2','richard.martin@hotmail.com',14);
INSERT INTO users (active,"password",username,employee_id) VALUES(true,'$2a$10$NigfQvmqvCmO5Kn3FepjiueXt5oyTzSm9IwHEOCLh2SI9ZeN01a1W','jennifer.wilson@gmail.com',15);
INSERT INTO users (active,"password",username,employee_id) VALUES(true,'$2a$10$bGFVocDgCN2bld4amfUCLOrt6Z.qz2IiZOqOPORxnA8vD6fa0BaI2','charles.thompson@yahoo.com',16);



-----INSERT DATA INTO USER ROLE ASSIGNMENTS-----
INSERT INTO user_role_assignment (assigned_date, "role", modified_date, user_id) VALUES ('2020-05-15 08:30:17.446', 'ROLE_OWNER', '2022-05-15 08:30:17.446', 1);
INSERT INTO user_role_assignment (assigned_date, "role", modified_date, user_id) VALUES ('2021-07-10 14:20:35.448', 'ROLE_WAITER', '2021-07-10 14:20:35.448', 2);
INSERT INTO user_role_assignment (assigned_date, "role", modified_date, user_id) VALUES ('2020-11-25 18:45:56.451', 'ROLE_WAITER', '2020-11-25 18:45:56.451', 3);
INSERT INTO user_role_assignment (assigned_date, "role", modified_date, user_id) VALUES ('2023-02-17 09:55:23.408', 'ROLE_WAITER', '2023-02-17 09:55:23.408', 4);
INSERT INTO user_role_assignment (assigned_date, "role", modified_date, user_id) VALUES ('2021-07-20 14:30:08.123', 'ROLE_WAITER', '2021-07-20 14:30:08.123', 5);
INSERT INTO user_role_assignment (assigned_date, "role", modified_date, user_id) VALUES ('2020-09-08 17:12:16.386', 'ROLE_WAITER', '2020-09-08 17:12:16.386', 6);
INSERT INTO user_role_assignment (assigned_date, "role", modified_date, user_id) VALUES ('2021-03-12 10:38:25.668', 'ROLE_WAITER', '2021-03-12 10:38:25.668', 7);
INSERT INTO user_role_assignment (assigned_date, "role", modified_date, user_id) VALUES ('2022-06-28 08:15:56.135', 'ROLE_WAITER', '2022-06-28 08:15:56.135', 8);
INSERT INTO user_role_assignment (assigned_date, "role", modified_date, user_id) VALUES ('2020-08-25 22:40:45.246', 'ROLE_WAITER', '2020-08-25 22:40:45.246', 9);
INSERT INTO user_role_assignment (assigned_date, "role", modified_date, user_id) VALUES ('2023-01-05 19:59:25.556', 'ROLE_COOK', '2023-01-05 19:59:25.556', 10);
INSERT INTO user_role_assignment (assigned_date, "role", modified_date, user_id) VALUES ('2022-11-14 16:05:24.302', 'ROLE_COOK', '2022-11-14 16:05:24.302', 11);
INSERT INTO user_role_assignment (assigned_date, "role", modified_date, user_id) VALUES ('2021-09-30 08:20:43.015', 'ROLE_COOK', '2021-09-30 08:20:43.015', 12);
INSERT INTO user_role_assignment (assigned_date, "role", modified_date, user_id) VALUES ('2023-06-07 09:22:48.270', 'ROLE_COOK', '2023-06-07 09:22:48.270', 13);
INSERT INTO user_role_assignment (assigned_date, "role", modified_date, user_id) VALUES ('2020-11-30 10:18:23.554', 'ROLE_JANITOR', '2020-11-30 10:18:23.554', 14);
INSERT INTO user_role_assignment (assigned_date, "role", modified_date, user_id) VALUES ('2021-08-15 13:45:50.926', 'ROLE_JANITOR', '2021-08-15 13:45:50.926', 15);
INSERT INTO user_role_assignment (assigned_date, "role", modified_date, user_id) VALUES ('2022-04-28 07:56:29.658', 'ROLE_JANITOR', '2022-04-28 07:56:29.658', 16);



-----INSERT DATA INTO SUPPLIER-----
INSERT INTO supplier (address,email,"name",phone) VALUES('0983 Kings Road','deliyahu0@foxnews.com','Mante Group','286-338-0165');
INSERT INTO supplier (address,email,"name",phone) VALUES('4013 Delladonna Avenue','gchanner2@myspace.com','Heidenreich, Kunde and Quitzon','311-954-0433');
INSERT INTO supplier (address,email,"name",phone) VALUES('41 Killdeer Road','rjakubovicz3@linkedin.com','Dach, Wuckert and Cronin','474-851-1834');
INSERT INTO supplier (address,email,"name",phone) VALUES('28 Welch Place','dbreitler4@tiny.cc','Jenkins LLC','345-394-9966');
INSERT INTO supplier (address,email,"name",phone) VALUES('80 Mcbride Hill','gjoist1@artisteer.com','Reichel Inc','744-784-1225');
INSERT INTO supplier (address,email,"name",phone) VALUES('1357 Woodland Avenue','jandras5@twitter.com','Hirthe and Sons','512-699-3458');
INSERT INTO supplier (address,email,"name",phone) VALUES('746 Oak Lane','mmacronald6@pinterest.com','Glover, Schneider and Rutherford','625-830-9782');



-----INSERT DATA INTO INGREDIENT-----
INSERT INTO ingredient ("name",quantity,restaurant) VALUES('Potato',346.0,1);
INSERT INTO ingredient ("name",quantity,restaurant) VALUES('Cheese',236.0,1);
INSERT INTO ingredient ("name",quantity,restaurant) VALUES('Salmon',581.0,1);
INSERT INTO ingredient ("name",quantity,restaurant) VALUES('Shrimp',155.0,1);
INSERT INTO ingredient ("name",quantity,restaurant) VALUES('Pasta',571.0,1);
INSERT INTO ingredient ("name",quantity,restaurant) VALUES('Beef',470.0,1);
INSERT INTO ingredient ("name",quantity,restaurant) VALUES('Chicken',342.0,1);
INSERT INTO ingredient ("name",quantity,restaurant) VALUES('Lamb',456.0,1);
INSERT INTO ingredient ("name",quantity,restaurant) VALUES('Veal',245.0,1);
INSERT INTO ingredient ("name",quantity,restaurant) VALUES('Onion',156.0,1);
INSERT INTO ingredient ("name",quantity,restaurant) VALUES('Tomato',278.0,1);
INSERT INTO ingredient ("name",quantity,restaurant) VALUES('Spinach',189.0,1);
INSERT INTO ingredient ("name",quantity,restaurant) VALUES('Mushroom',215.0,1);
INSERT INTO ingredient ("name",quantity,restaurant) VALUES('Bell Pepper',142.0,1);
INSERT INTO ingredient ("name",quantity,restaurant) VALUES('Garlic',128.0,1);



-----INSERT DATA INTO DINING TABLE-----
INSERT INTO dining_table ("number",occupied) VALUES(1,false);
INSERT INTO dining_table ("number",occupied) VALUES(2,false);
INSERT INTO dining_table ("number",occupied) VALUES(3,false);
INSERT INTO dining_table ("number",occupied) VALUES(4,false);
INSERT INTO dining_table ("number",occupied) VALUES(5,false);
INSERT INTO dining_table ("number",occupied) VALUES(6,false);
INSERT INTO dining_table ("number",occupied) VALUES(7,false);
INSERT INTO dining_table ("number",occupied) VALUES(8,false);
INSERT INTO dining_table ("number",occupied) VALUES(9,false);
INSERT INTO dining_table ("number",occupied) VALUES(10,false);



-----INSERT DATA INTO MENU ITEM-----
---APPETIZER---
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Crispy potato wedges seasoned with herbs and served with a tangy dipping sauce.','APPETIZERS','Herbed Potato Wedges',80000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Savory cheese-stuffed mushrooms baked to perfection and served with a garlic aioli.','APPETIZERS','Cheese-Stuffed Mushrooms',95000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Crispy chicken wings tossed in your choice of sauce: buffalo, honey BBQ, or garlic parmesan.','APPETIZERS','Chicken Wings Sampler',105000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Fresh bruschetta with diced tomatoes, garlic, basil, and balsamic glaze on toasted baguette slices.','APPETIZERS','Tomato Basil Bruschetta',75000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('A platter of assorted cured meats, cheeses, olives, and bread, perfect for sharing.','APPETIZERS','Charcuterie Board',125000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Crispy calamari rings served with marinara sauce and a squeeze of lemon.','APPETIZERS','Crispy Calamari',115000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('A trio of dips including hummus, tzatziki, and baba ganoush, served with pita bread.','APPETIZERS','Mediterranean Dip Trio',95000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Savory spinach and feta stuffed pastry pockets, served with a side of tzatziki.','APPETIZERS','Spanakopita Bites',90000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Miniature sliders with seasoned beef patties, melted cheese, and a special sauce.','APPETIZERS','Mini Beef Sliders',100000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Crispy onion rings served with a smoky chipotle dipping sauce.','APPETIZERS','Chipotle Onion Rings',85000.0,1);
---MAINDISH---
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Creamy layers of sliced potatoes and melted cheese, baked to perfection.','MAINDISH','Cheesy Potato Casserole',200000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Al dente linguine pasta tossed with sautéed salmon, shrimp, and onions in a garlic butter sauce.','MAINDISH','Salmon and Shrimp Linguine',300000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Tender beef strips stir-fried with a colorful medley of vegetables and served over fluffy rice.','MAINDISH','Beef and Vegetable Stir-Fry',120000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Marinated chicken and potato cubes threaded onto skewers, grilled and served with a tangy dipping sauce.','MAINDISH','Chicken and Potato Skewers',220000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Slow-cooked lamb stew infused with rich flavors of caramelized onions, tomatoes, and aromatic spices.','MAINDISH','Lamb and Onion Stew',350000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Classic pasta carbonara featuring bacon, sautéed onions, and a creamy egg-based sauce.','MAINDISH','Creamy Pasta Carbonara',150000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Tender veal cutlets sautéed with mushrooms and onions in a Marsala wine sauce, served with mashed potatoes.','MAINDISH','Veal Marsala with Mushrooms',420000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Crispy shrimp and potato chunks nestled in warm tortillas, topped with a zesty coleslaw and salsa.','MAINDISH','Shrimp and Potato Tacos',270000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Grilled tortillas stuffed with seasoned chicken, melted cheese, and sautéed onions, served with sour cream and guacamole.','MAINDISH','Chicken and Cheese Quesadillas',170000.0,1);
INSERT INTO menu_item (description,dish_type,"name",price,restaurant_id) VALUES('Wholesome frittata loaded with caramelized onions and sliced potatoes, perfect for breakfast or brunch.','MAINDISH','Onion and Potato Frittata',150000.0,1);



-----INSERT DATA INTO ORDER-----
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES(CURRENT_TIMESTAMP,true,780000.0,1,2);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES(CURRENT_TIMESTAMP,true,1020000.0,2,2);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES(CURRENT_TIMESTAMP,true,1150000.0,3,2);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2020-09-09 19:12:16.386',true,285000.0,2,6);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2021-07-20 15:30:08.123',true,725000.0,7,5);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2021-07-20 13:45:08.123',true,540000.0,7,5);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2023-02-18 16:55:23.408',true,650000.0,8,4);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2023-02-18 20:20:35.448',true,695000.0,8,4);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2020-11-26 18:45:56.451',true,1150000.0,8,3);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2020-11-26 11:45:56.451',true,480000.0,1,3);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2021-07-11 14:20:35.448',true,1380000.0,5,2);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2021-07-11 15:12:35.448',true,540000.0,6,2);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2021-07-11 18:32:35.448',true,570000.0,6,2);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2020-08-26 14:20:35.448',true,800000.0,5,9);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2020-08-26 17:30:35.448',true,720000.0,6,9);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2022-06-29 12:20:35.448',true,720000.0,10,8);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2022-06-29 15:17:35.448',true,455000.0,3,8);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2021-03-13 10:38:25.668',true,790000.0,3,7);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2021-03-13 14:50:25.668',true,595000.0,1,7);
INSERT INTO orders (created_date,is_paid,total_price,table_id,employee_id) VALUES('2020-09-09 20:30:16.386',true,1465000.0,2,6);




-----INSERT DATA INTO ORDER-DETAILS-----
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(510000.0,3,9,1);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(270000.0,1,8,1);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(600000.0,4,6,2);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(420000.0,1,7,2);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(300000.0,2,10,3);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(850000.0,5,9,3);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(230000.0,2,6,4);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(150000.0,1,20,4);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(420000.0,1,17,4);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(115000.0,1,6,5);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(105000.0,1,3,5);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(150000.0,1,16,5);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(350000.0,1,15,5);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(125000.0,1,5,6);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(95000.0,1,7,6);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(200000.0,1,11,6);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(300000.0,1,12,6);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(100000.0,1,9,7);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(85000.0,1,10,7);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(120000.0,1,13,7);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(150000.0,1,20,7);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(115000.0,1,6,8);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(90000.0,1,8,8);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(95000.0,1,2,8);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(120000.0,1,13,8);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(150000.0,1,20,8);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(220000.0,1,14,8);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(80000.0,1,1,9);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(95000.0,1,2,9);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(270000.0,1,18,9);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(150000.0,1,20,9);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(230000.0,2,6,10);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(80000.0,1,1,10);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(95000.0,1,2,10);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(270000.0,1,18,10);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(150000.0,1,20,10);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(220000.0,1,14,10);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(420000.0,1,17,10);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(85000.0,1,10,11);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(200000.0,1,11,11);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(80000.0,1,1,12);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(125000.0,1,5,12);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(350000.0,1,15,12);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(170000.0,1,19,12);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(95000.0,1,7,13);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(75000.0,1,4,13);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(150000.0,1,20,13);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(220000.0,1,14,13);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(180000.0,2,8,14);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(200000.0,1,11,14);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(270000.0,1,18,14);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(95000.0,1,2,15);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(100000.0,1,9,15);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(350000.0,1,15,15);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(150000.0,1,16,15);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(85000.0,1,10,16);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(75000.0,1,4,16);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(840000.0,2,17,16);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(150000.0,1,16,16);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(190000.0,2,7,17);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(120000.0,1,13,17);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(170000.0,1,19,17);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(230000.0,2,6,18);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(160000.0,2,1,18);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(250000.0,2,5,18);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(120000.0,1,13,18);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(170000.0,1,19,18);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(300000.0,1,12,18);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(150000.0,1,20,18);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(160000.0,2,1,19);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(90000.0,1,8,19);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(120000.0,1,13,19);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(170000.0,1,19,19);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(105000.0,1,3,20);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(95000.0,1,2,20);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(150000.0,1,16,20);
INSERT INTO order_detail (price,quantity,menu_item_id,order_id) VALUES(220000.0,1,14,20);



-----INSERT DATA INTO BILL-----
INSERT INTO bill (created_date,total_price,employee_id,supplier_id) VALUES(CURRENT_TIMESTAMP,9000000.0,5,1);
INSERT INTO bill (created_date,total_price,employee_id,supplier_id) VALUES(CURRENT_TIMESTAMP,64000000,5,5);
INSERT INTO bill (created_date,total_price,employee_id,supplier_id) VALUES(CURRENT_TIMESTAMP,80000000,5,3);



-----INSERT DATA INTO BILL DETAILS-----
INSERT INTO bill_detail (price,price_per_unit,quantity,bill_id,ingredient_id) VALUES(8000000.0,40000.0,200.0,1,1);
INSERT INTO bill_detail (price,price_per_unit,quantity,bill_id,ingredient_id) VALUES(1000000.0,10000.0,100.0,1,10);
INSERT INTO bill_detail (price,price_per_unit,quantity,bill_id,ingredient_id) VALUES(14000000,1400000.0,10.0,2,2);
INSERT INTO bill_detail (price,price_per_unit,quantity,bill_id,ingredient_id) VALUES(50000000,500000.0,100.0,2,9);
INSERT INTO bill_detail (price,price_per_unit,quantity,bill_id,ingredient_id) VALUES(20000000,100000.0,200.0,3,5);
INSERT INTO bill_detail (price,price_per_unit,quantity,bill_id,ingredient_id) VALUES(60000000,400000.0,150.0,3,3);