create table Customers (
             CustomerID int,
			 FirstName varchar(20),
			 LastName varchar(20),
			 City varchar(20),
			 Country varchar(20)
			 );

insert into  Customers( CustomerID,FirstName, LastName, City, Country)
 values ('1','Ayush','Datta', 'Banglore' , 'India'),
         ('2','Rohit','Sinha', 'Mumbai' , 'India'),
         ('3','Amit','Kumar', 'London' , 'UK'),
		 ('4','Arun','Singh', 'Berlin' , 'Germany'),
		 ('5','Ajit','Kumar', 'Seattle' , 'USA'),
		 ('6','Shruti','Shree', 'New York' , 'USA'),
		 ('7','Sneha','Agarwal', 'New York' , 'USA'),
		 ('8','Sneha','Reddy', 'New Jersey' , 'USA'),
		 ('9','Ayushi','Singh', 'Sydney' , 'Australia'),
		 ('10','Aditya','Kapoor', 'Delhi' , 'India')
         ;

select * from Customers;

select FirstName , LastName, City from Customers;
select FirstName , LastName, City from Customers where City='New York';
select FirstName , LastName, City from Customers where not City='New York';
select distinct Country from Customers;

update Customers set LastName='Agarwal' where CustomerId=2;
select * from Customers where City='Mumbai';
select * from Customers where Country='India';
select * from Customers where City ='Delhi' or City='New York';
select * from Customers where City='London' and Country='UK';
select * from Customers where FirstName = 'Amit' and (City='Delhi' or City='London');
select * from Customers where not Country='USA' and not Country='UK';

select * from Customers order by Country;
select * from Customers order by Country DESC;
select * from Customers order by City , Country;

insert into Customers( CustomerID, FirstName, LastName, City, Country)
values ('11', 'Akash', ' ', 'Tokyo', 'Japan');

create table Orders (
     OrderID varchar(20),
	 CustomerID int,
	 OrderStatus varchar(200)
	 );

	 insert into Orders (OrderID , CustomerID, OrderStatus)
	 values ('1001' , '1' ,'Delivered'),
	         ('1002' , '2' ,'Delivered'),
	         ('1003' , '3' ,' Not Delivered'),
			 ('1004' , '4' ,'Delivered'),
			 ('1005' , '5' ,'Not Delivered'),
			 ('1006' , '6' ,'Delivered')
			
			 ;

 select * from Orders;

 --inner join 
 select Orders.OrderID, Customers.FirstName, Customers.LastName, Customers.City from Orders
 inner join Customers 
 on Orders.CustomerID=Customers.CustomerID;

 --left outer join
 SELECT Customers.FirstName, Customers.LastName, Customers.City, Orders.OrderStatus
FROM Customers  
LEFT OUTER JOIN Orders  
ON Customers.CustomerID = Orders.CustomerID;  

--right outer join
SELECT Orders.OrderID,Customers.FirstName, Customers.LastName, Customers.City, Orders.OrderStatus 
FROM Customers  
RIGHT OUTER JOIN Orders  
ON Customers.CustomerID = Orders.CustomerID;  

--full outer join
SELECT Orders.OrderID,Customers.FirstName, Customers.LastName, Customers.City,Customers.Country, Orders.OrderStatus 
FROM Customers  
FULL OUTER JOIN Orders  
ON Customers.CustomerID = Orders.CustomerID;  


SELECT Customers.CustomerID,
COUNT(Orders.OrderID) AS order_count
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID;


--UPDATE tablename  
--INNER JOIN tablename  
--ON tablename.columnname = tablename.columnname  
--SET tablenmae.columnnmae = tablenmae.columnname;

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 1;

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 1
ORDER BY COUNT(CustomerID) DESC;

SELECT Customers.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 1;


SELECT Customers.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE LastName = 'Singh' OR LastName = 'Kumar'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 1;