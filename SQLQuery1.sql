

 
insert into  Customers( CustomerID,FirstName, LastName, Address, City)
 values ('2','Rohit','Sinha', 'Mumbai' , 'Mumbai'),
         ('3','Amit','Kumar', 'Noida' , 'Noida'),
		 ('4','Arun','Singh', 'Kolkata' , 'Kolkata'),
		 ('5','Ajit','Kumar', 'Pune' , 'Pune'),
		 ('6','Sneha','Agarwal', 'Ranchi' , 'Ranchi')
         ;

select * from Customers;

update Customers set LastName='Agarwal' where CustomerId=2;
delete from Customers where CustomerId=3;

select * from Customers where City='Mumbai';

alter table Customers add Country varchar (200);

alter table customers drop column Address;

select * from Customers where City like '%Mumbai';

update Customers set CustomerID ='7' where LastName ='Sinha';
update Customers set City ='London' where LastName ='Sinha';
insert into Customers (Country) values ('UK') 
delete from Customers where Country='UK';

select * from Customers where City='Kolkata';
select * from Customers where City ='Pune' or City='Kolkata';
select * from Customers where City='London' and LastName ='Sinha';

select Country from Customers insert into Country values('India') where City='Kolkata' ;

select * from Customers where City='Noida' or City='Pune' and LastName like'Singh%';
select * from Customers where LastName like 'Singh%';

alter table Customers drop column Country;

create table Orders (
     OrderID varchar(20),
	 CustomerID int,
	 OrderDetails varchar(200)
	 );

	 insert into Orders (OrderID , CustomerID, OrderDetails)
	 values ('1001' , '2' ,'Delivered'),
	         ('1002' , '3' ,' Not Delivered'),
			 ('1003' , '4' ,'Delivered'),
			 ('1004' , '5' ,'Not Delivered'),
			 ('1005' , '6' ,'Delivered')
			 ;

	 select * from Orders;

	 select Orders.OrderID, Customers.FirstName, Customers.LastName, Orders.OrderDetails
	 from Orders
	 inner join Customers on Orders.CustomerID= Customers.CustomerID;