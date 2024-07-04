create database demo;
use demo;

-----------------------------------------UserREg----------------------------------------------------

create table UserReg(
UserID int primary key,
UserName varchar(50),
Email varchar(50),
Password varchar(50)
);
select * from UserReg;


ALTER TABLE UserReg
ALTER COLUMN UserName varchar(50) NOT NULL;
ALTER TABLE UserReg
ALTER COLUMN Email varchar(50) NOT NULL;
ALTER TABLE UserReg
ALTER COLUMN Password varchar(50) NOT NULL;

-----------------------------------------Customer--------------------------------------------------------------------------


create table Customer(
C_id int primary key,
C_Name varchar(50),
C_contact varchar(50)
);

select * from Customer;


INSERT INTO Customer (C_id, C_Name, C_contact)
VALUES
(1, 'John Doe', '12345678901'),
(2, 'Jane Smith', '09876543211'),
(3, 'Michael Johnson', '55555555551'),
(4, 'Emily Brown', '77777777771'),
(5, 'William Jones', '99999999991'),
(6, 'Olivia Davis', '11111111111'),
(7, 'James Wilson', '22222222221'),
(8, 'Emma Taylor', '33333333331'),
(9, 'Benjamin Evans', '44444444441'),
(10, 'Sophia Martinez', '66666666661'),
(11, 'Alexander Anderson', '88888888881'),
(12, 'Mia Thomas', '00000000001'),
(13, 'Ethan Jackson', '12121212121'),
(14, 'Isabella White', '34343434341'),
(15, 'Aiden Harris', '56565656561'),
(16, 'Amelia Clark', '78787878781'),
(17, 'Lucas Lewis', '90909090901'),
(18, 'Ava Lee', '23232323231'),
(19, 'Liam Walker', '45454545451'),
(20, 'Charlotte Moore', '67676767671');



------------------------------------------Category-------------------------------------



create table Category(
categoryID int primary key,
Cate_name varchar(50)
);

INSERT INTO Category (categoryID, Cate_name)
VALUES(1,'Starters'),
(2,'Main Course'),
(3,'Desserts');

select * from Category;

-----------------------------------------------------Employee----------------------------------------------------------


create table employee(
emp_id int primary key,
emp_name varchar(50),
emp_role varchar(50),
emp_Address varchar(50),
emp_Contact varchar(30),
emp_Salary varchar(50)
);


INSERT INTO employee (emp_id, emp_name, emp_role, emp_Address, emp_Contact, emp_Salary)
VALUES
(1, 'Alice', 'Manager', '123 Main St', '1112223333', '50000'),
(2, 'Bob', 'Chef', '456 Elm St', '4445556666', '40000'),
(3, 'Charlie', 'Waiter', '789 Oak St', '7778889999', '25000'),
(4, 'Diana', 'Bartender', '101 Pine St', '3332221111', '30000'),
(5, 'Eva', 'Hostess', '222 Maple St', '9998887777', '28000'),
(6, 'Frank', 'Sous Chef', '333 Cedar St', '6665554444', '42000'),
(7, 'Gina', 'Server', '444 Walnut St', '2223334444', '26000'),
(8, 'Henry', 'Dishwasher', '555 Cherry St', '8889990000', '20000'),
(9, 'Ivy', 'Busser', '666 Elm St', '5554443333', '21000'),
(10, 'Jack', 'Line Cook', '777 Oak St', '1112223333', '32000'),
(11, 'Karen', 'Assistant Manager', '888 Pine St', '3334445555', '48000'),
(12, 'Leo', 'Prep Cook', '999 Maple St', '6667778888', '29000'),
(13, 'Molly', 'Food Runner', '1010 Cedar St', '9998887777', '23000'),
(14, 'Nathan', 'Barista', '1111 Walnut St', '2223334444', '27000'),
(15, 'Olivia', 'Host', '1212 Cherry St', '5556667777', '26000'),
(16, 'Paul', 'Sommelier', '1313 Elm St', '8889990000', '45000'),
(17, 'Quinn', 'Head Waiter', '1414 Oak St', '3332221111', '35000'),
(18, 'Rachel', 'Executive Chef', '1515 Pine St', '1112223333', '60000'),
(19, 'Sam', 'Shift Manager', '1616 Maple St', '4445556666', '52000'),
(20, 'Tom', 'Baker', '1717 Cedar St', '9998887777', '34000');

select*from employee;


----------------------------------------------Menu---------------------------------------------------------



Create table Menu(
itemID int primary key,
name varchar(50),
description varchar(50),
price varchar(50),
status varchar(10),
categoryID int,
emp_id int,
foreign key (emp_id) references employee (emp_id),
foreign key (categoryID) references Category(categoryID)
);
ALTER TABLE Menu
ALTER COLUMN description VARCHAR(225);


INSERT INTO Menu (itemID, name, description, price, status, categoryID, emp_id)
VALUES
(1, 'Caesar Salad', 'Fresh romaine lettuce ', '9.99', 'Available', 1, 6),
(2, 'Spaghetti Bolognese', 'Spaghetti with meat sauce', '12.99', 'Available', 2, 6),
(3, 'Cheeseburger', 'Grilled beef patty with melted', '11.99', 'Available', 3, 2),
(4, 'Margherita Pizza', 'Classic pizza with tomato sauce and mozzarella', '14.99', 'Available', 1, 18),
(5, 'Chicken Alfredo', 'Fettuccine pasta with creamy Alfredo ', '15.99', 'Available', 2, 18),
(6, 'Margarita', 'Tequila, lime juice, a', '8.99', 'Available', 3, 4),
(7, 'Chocolate Brownie Sundae', 'Warm chocolate brownie with vanilla ice cream and chocolate sauce', '7.99', 'Available', 1, 2),
(8, 'Caesar Wrap', 'Grilled chicken, romaine lettuce, and Caesar dressing wrapped in a tortilla', '10.99', 'Available', 2, 2),
(9, 'Shrimp Scampi', 'Sautéed shrimp with garlic, butter, and white wine sauce served over pasta', '17.99', 'Available', 3, 18),
(10, 'Chicken Caesar Salad', 'Grilled chicken, romaine lettuce, croutons, and Caesar dressing', '13.99', 'Available', 1, 6),
(11, 'Vegetable Stir-Fry', 'Assorted vegetables stir-fried in a savory sauce served over rice', '11.99', 'Available', 2, 6),
(12, 'French Onion Soup', 'Rich beef broth with caramelized onions, topped with cheese and croutons', '8.99', 'Available', 3, 2),
(13, 'Fish Tacos', 'Grilled fish fillets served in soft tortillas with cabbage slaw and chipotle mayo', '16.99', 'Available', 1, 4),
(14, 'Classic Pancakes', 'Fluffy pancakes served with butter and maple syrup', '9.99', 'Available', 2, 4),
(15, 'BBQ Chicken Sandwich', 'Grilled chicken breast with BBQ sauce, cheddar cheese, and crispy bacon on a bun', '13.99', 'Available', 3, 2),
(16, 'Vegetarian Pizza', 'Pizza topped with assorted vegetables and cheese', '13.99', 'Available', 1, 18),
(17, 'Pasta Primavera', 'Pasta tossed with fresh vegetables in a light garlic sauce', '12.99', 'Available', 2, 18),
(18, 'Chocolate Milkshake', 'Creamy chocolate milkshake topped with whipped cream', '6.99', 'Available', 3, 4),
(19, 'Greek Salad', 'Mixed greens topped with feta cheese, olives, tomatoes, cucumbers, and Greek dressing', '10.99', 'Available', 1, 6),
(20, 'Chicken Quesadilla', 'Grilled chicken and melted cheese folded in a tortilla', '11.99', 'Available', 2, 2);

select * from Menu;


------------------------------------------------OOrder-----------------------------------------------------------------

create table OOrder(
order_id int primary key ,
order_date varchar(30),
order_status varchar(10),
C_id int,
emp_id int,
foreign key (emp_id)references employee(emp_id),
foreign key (C_id)references Customer(C_id)
);

INSERT INTO OOrder (order_id, order_date, order_status, C_id, emp_id)
VALUES
(1, '01-01-2022', 'Pending', 1, 1),
(2, '02-01-2022', 'Processing', 2, 2),
(3, '03-01-2022', 'Completed', 3, 3),
(4, '04-01-2022', 'Pending', 1, 4),
(5, '05-01-2022', 'Processing', 2, 5),
(6, '06-01-2022', 'Completed', 3, 6),
(7, '07-01-2022', 'Pending', 1, 7),
(8, '08-01-2022', 'Processing', 2, 8),
(9, '09-01-2022', 'Completed', 3, 9),
(10, '10-01-2022', 'Pending', 1, 10),
(11, '11-01-2022', 'Processing', 2, 11),
(12, '12-01-2022', 'Completed', 3, 12),
(13, '13-01-2022', 'Pending', 1, 13),
(14, '14-01-2022', 'Processing', 2, 14),
(15, '15-01-2022', 'Completed', 3, 15),
(16, '16-01-2022', 'Pending', 1, 16),
(17, '17-01-2022', 'Processing', 2, 17),
(18, '18-01-2022', 'Completed', 3, 18),
(19, '19-01-2022', 'Pending', 1, 19),
(20, '20-01-2022', 'Processing', 2, 20);

insert into OOrder values (21, '18-05-2024', 'Processing', 2, 20);


select * from OOrder;

----------------------------------------------------Order_Item--------------------------------------------------------------------
create table Order_item(
O_Item_id int primary key,
quantity int,
itemID int,
Order_id int,
foreign key (Order_id) references OOrder (Order_id),
  FOREIGN KEY (itemID) REFERENCES Menu(itemID)
);

INSERT INTO Order_item (O_Item_id, quantity, itemID, Order_id)
VALUES
(1, 2, 1, 1),
(2, 3, 1, 1),
(3, 1, 1, 2),
(4, 2, 2, 2),
(5, 3, 2, 3),
(6, 1, 6, 3),
(7, 2, 6, 4),
(8, 3, 8, 4),
(9, 1, 9, 5),
(10, 2, 10, 5),
(11, 3, 11, 6),
(12, 1, 12, 6),
(13, 2, 12, 7),
(14, 3, 14, 7),
(15, 1, 14, 8),
(16, 2, 14, 8),
(17, 3, 14, 9),
(18, 1, 18, 9),
(19, 2, 19, 10),
(20, 3, 20, 10);

--DELETE FROM Order_item;
select *from Order_item;






-- ---------------------------Define foreign key constraints with cascading options-------------------------------

ALTER TABLE Order_item
ADD CONSTRAINT FK_Order_item_itemID
FOREIGN KEY (itemID)
REFERENCES Menu(itemID)
ON DELETE SET NULL
ON UPDATE NO ACTION;

-- Drop and recreate the foreign key constraint for Order_item table with both ON UPDATE CASCADE and ON DELETE CASCADE
ALTER TABLE Order_item
DROP CONSTRAINT FK_Order_item_Order_id;

ALTER TABLE Order_item
ADD CONSTRAINT FK_Order_item_Order_id
FOREIGN KEY (Order_id)
REFERENCES OOrder (order_id)
ON DELETE set null
ON UPDATE no action;

-- Drop and recreate the foreign key constraint for Menu table with both ON UPDATE CASCADE and ON DELETE CASCADE
ALTER TABLE Menu
DROP CONSTRAINT FK_Menu_categoryID;

ALTER TABLE Menu
ADD CONSTRAINT FK_Menu_categoryID
FOREIGN KEY (categoryID)
REFERENCES Category(categoryID)
ON DELETE set null
ON UPDATE no action;





-- Drop the existing foreign key constraint
ALTER TABLE OOrder
DROP CONSTRAINT FK_OOrder_C_id;

-- Recreate the foreign key constraint with ON UPDATE CASCADE
ALTER TABLE OOrder
ADD CONSTRAINT FK_OOrder_C_id
FOREIGN KEY (C_id)
REFERENCES Customer(C_id)
ON DELETE no action
ON UPDATE no action;








---------------------------------------------------JOINs For Reporting----------------------------------------




--in this we will join menu with order itm bcz the pk in menu item is fk in order item 

SELECT m.name AS MostOrderedItems, COUNT(oi.itemID) AS NumberOfOrders
FROM dbo.Menu m
JOIN dbo.Order_item oi ON m.itemID = oi.itemID
GROUP BY m.name
ORDER BY NumberOfOrders DESC
;

--in this we will join OOrder table with Customer table (by C_id) 

SELECT TOP 1
    C.C_id,
    C.C_Name,
    COUNT(O.order_id) AS OrdersCount
FROM
    Customer C
JOIN
    OOrder O ON C.C_id = O.C_id

GROUP BY
    C.C_id,
    C.C_Name
	
ORDER BY
    OrdersCount DESC
	
	;

	
	SELECT * FROM OOrder ORDER BY order_date;
	SELECT * FROM OOrder WHERE order_date = GetDate();

	select C_Name from Customer where C_Name like 'a%';

	
	select * from OOrder where order_date='18-05-2024'; 

	SELECT * 
FROM OOrder 
WHERE 
    DAY(order_date) = DAY(GetDate()) AND 
    MONTH(order_date) = MONTH(GetDate()) AND 
    YEAR(order_date) = YEAR(GetDate());


	select  C_Name , COUNT(distinct order_id) from Customer join OOrder on 
	Customer.C_id=OOrder.C_id 
	where C_Name like 'John Doee' 
	group by C_Name,order_id
	
	order by order_id;


	select  C_Name , COUNT( order_id) from (Customer join OOrder on 
	Customer.C_id=OOrder.C_id )
	where C_Name like 'John Doee' 
	group by C_Name,order_id
	
	order by order_id;


	SELECT * 
FROM OOrder 
WHERE 
    CONVERT(VARCHAR(10), order_date, 105) = CONVERT(VARCHAR(10), GETDATE(), 105);




select * from Customer
	
	SELECT m.name AS MostOrderedItems, COUNT(oi.itemID) AS NumberOfOrders
FROM dbo.Menu m
JOIN dbo.Order_item oi ON m.itemID = oi.itemID
GROUP BY m.name
ORDER BY NumberOfOrders DESC




SELECT 
    C_Name AS CustomerName,
    name AS MenuName,
    order_date AS OrderDate,
	COUNT(oi.itemID) As NumberofOrder
    --O.order_id AS OrderID
FROM 
    Customer 
JOIN 
    OOrder  ON Customer.C_id = OOrder.C_id
JOIN 
    Order_item oi ON oi.order_id = Oorder.Order_id
JOIN 
    Menu  ON Menu.itemID = oi.itemID

Group By C_Name,name,order_date,oi.itemID





SELECT 
   distinct C_Name AS CustomerName,
    
	COUNT(oi.itemID) As NumberofOrder
    --O.order_id AS OrderID
FROM 
    Customer 
JOIN 
    OOrder  ON Customer.C_id = OOrder.C_id
JOIN 
    Order_item oi ON oi.order_id = Oorder.Order_id
JOIN 
    Menu  ON Menu.itemID = oi.itemID

Group By C_Name,oi.itemID


SELECT 
    C.C_id,
    C.C_Name,
    COUNT(O.order_id) AS TotalOrders
FROM 
    Customer C
LEFT JOIN 
    OOrder O ON C.C_id = O.C_id
GROUP BY 
    C.C_id, 
    C.C_Name
	
ORDER BY 
    TotalOrders DESC;


	SELECT 
    C.C_id,
    C.C_Name,
    CASE WHEN COUNT(O.order_id) IS NULL THEN 'null' ELSE COUNT(O.order_id) END AS TotalOrders
FROM 
    Customer C
LEFT JOIN 
    OOrder O ON C.C_id = O.C_id
GROUP BY 
    C.C_id, 
    C.C_Name
ORDER BY 
    TotalOrders DESC;



	SELECT 
    C.C_id,
    C.C_Name,
    NULLIF(COUNT(O.order_id), 0) AS TotalOrders
FROM 
    Customer C
LEFT JOIN 
    OOrder O ON C.C_id = O.C_id
GROUP BY 
    C.C_id, 
    C.C_Name
ORDER BY 
    TotalOrders DESC;







SELECT m.name AS MostOrderedItems, COUNT(oi.itemID) AS NumberOfOrders
FROM dbo.Menu m
JOIN dbo.Order_item oi ON m.itemID = oi.itemID
GROUP BY m.name
ORDER BY NumberOfOrders DESC
;



SELECT m.name AS MostOrderedItems, COUNT(oi.itemID) AS NumberOfOrders
FROM dbo.Menu m
JOIN dbo.Order_item oi ON m.itemID = oi.itemID
GROUP BY m.name
ORDER BY NumberOfOrders DESC
;