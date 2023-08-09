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




