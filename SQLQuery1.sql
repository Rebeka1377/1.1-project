--create database CafeManagement;
--use CafeManagement;



create table Customer(
	
	Customer_ID int identity (1001,1) not null primary key,
	Customer_Name varchar (20) not null,
	Address varchar (50) not null,
	Mail varchar (20) not null,
	Phone_Number varchar (11) not null
)

create table Menu(
	
	Food_ID int identity (1001,1) not null primary key,
	Food_Name varchar (20) not null,
	Food_Type varchar (20) not null,
	Quantity decimal (20) not null,
	Price decimal (30) not null,
	
)
 
 create table Foods(

	FoodID int identity (6001,1) not null primary key,
	Catagory varchar(20) not null,
	Price money not null,
	Availability varchar(10) not null default 'YES', --status = availability

	Food_ID int null foreign key references Menu(Food_ID),
)


create table category(

	FoodID int identity (6001,1) not null primary key,
	Catagory varchar(20) not null,
	
	Availability varchar(10) not null default 'YES', --status = availability

	Food_ID int null foreign key references Menu(Food_ID),
)

INSERT INTO Category(  ID,Category)
VALUES( 1,'Dessert'),
    ( 2,'Coffee')
    
CREATE TABLE Orders (
    FoodID INT IDENTITY(1001, 1) NOT NULL PRIMARY KEY,
    Food_Name VARCHAR(20) NOT NULL,
    Quantity DECIMAL(20, 2) NOT NULL,
    Price DECIMAL(38, 2) NOT NULL,
    Availability VARCHAR(10) NOT NULL DEFAULT 'YES',
    Food_ID INT NULL REFERENCES Menu(Food_ID)
);

INSERT INTO Orders (OrderID, GrandTotal, ProductPrice, ProductTotal, UserEmail)
VALUES
    (1, 100, 20, 80,  'john1@example.com'),
    (2, 150, 30, 120, 'rebeka2@example.com'),
    (3, 200, 40, 160, 'alice3@example.com');
	SELECT * FROM Orders;
--	----------------------------------------------------------------------------------


 create table bill(
	
	billID int identity (9001,1) not null primary key,
	billAmount money not null,
	billDate date not null,
	paymentMethod varchar (10) not null,

	CustomerID int not null foreign key references customer(Customer_ID),
	Food_ID int not null foreign key references menu(Food_ID),
)

insert into Customer(ID, name,) values
('Rebeka', 650), ('Rebeka', 650),
('Rebeka', 650), ('Rebeka', 650), 
('Orpa', 1200), ('Orpa', 1200),
('Orpa', 1200), ('Orpa', 1200)


 CREATE TABLE Products (
    ID int identity (6000,1) not null primary key,
    Name VARCHAR(255),
    Category VARCHAR(255),
    Price DECIMAL(10, 2)
);

INSERT INTO Products( Name, Category, Price)
VALUES('Cake', 'Dessert', 19.99),
    ( 'coffee', 'Coffee', 29.99)
    
SELECT * FROM Products;

select * from Menu
select * from Customer
select * from bill
select * from Foods
select 

-- --------------------------------------------------------------------------------------

drop table Products;
drop table Menu ;
drop table customer;
drop table bill;
drop table Orders;


--	----------------------------------------------------------------------------------------------------------------------------------

	CREATE TABLE Transactions (
    ID INT PRIMARY KEY,
    Name VARCHAR(255),
    MobileNumber VARCHAR(20),
    Email VARCHAR(255),
    Total DECIMAL(10, 2),
    CreatedBy VARCHAR(255)
);

INSERT INTO Transactions (ID, Name, MobileNumber, Email, Date, Total, CreatedBy)
VALUES
    (1, 'John Doe', '1234567890', 'john1@example.com', '2023-08-21', 100.00, 'Admin'),
    (2, 'Rebeka Sultana', '9876543210', 'rebeka2@example.com', '2023-08-20', 150.00, 'Admin'),
    (3, 'Alice Johnson', '5551234567', 'alice3@example.com', '2023-08-19', 200.00, 'Admin');
SELECT * FROM Transactions;

-- ---------------------------------------------------------------------------------------------

select * from category;