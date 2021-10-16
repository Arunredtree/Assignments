create database assignment;
use assignment;
create table SalesPeople(Snum int not null primary key,Sname varchar(100),City varchar(100),Comm int);
create table Customers(Cnum int not null primary key,Cname varchar(100),City varchar(100), snum int, foreign key (Snum) references SalesPeople(snum));
create table Orders(Onum int not null primary key,Amt int,Odate date ,cnum int,snum int,foreign key (cnum) references Customers(cnum),foreign key (Snum) references SalesPeople(snum));
insert into SalesPeople values( 1001, 'Peel.', 'London.', 12),(1002, 'Serres', 'Sanjose.', 13),(1004 ,'Motika', 'London.', 11),(1007 ,'Rifkin' ,'Barcelona', .15),(1003 ,'Axelrod', 'Newyork.' ,10);
insert into Customers values (2001,  'Hoffman', 'London', 1001),(2002, 'Giovanni', 'Rome', 1003),(2003,  'Liu', 'Sanjose', 1002),(2004,'Grass', 'Berlin', 1002),(2006, 'Clemens', 'London', 1001),(2008, 'Cisneros', 'Sanjose', 1007),(2007, 'Pereira', 'Rome' ,1004);
insert into Orders values (3001, 18.69, '3-10-1990', 2008 ,1007),(3003, 767.19, '3-10-1990', 2001, 1001),(3002, 1900.10, '3-10-1990', 2007, 1004),(3005 , 5160.45, '3-10-1990', 2003 ,1002),(3006,  1098.16, '3-10-1990', 2008, 1007),(3009, 1713.23, '4-10-1990', 2002 ,1003),(3007,  75.75 ,'4-10-1990', 2004 ,1002),(3008,  4273.00, '5-10-1990', 2006, 1001),(3010,  1309.95, "6-10-1990", 2004, 1002),(3011,  9891.88, "6-10-1990", 2006, 1001);
ALTER  Table Orders modify COLUMN Amt double;
ALTER  Table Orders modify COLUMN Odate varchar(100);
select count(Sname) from SalesPeople where Sname like 'a%' or Sname like 'A%';
select SalesPeople.Sname from SalesPeople inner join Orders on SalesPeople.Snum=Orders.Snum Where Orders.Amt>2000;
select Count(Sname) from SalesPeople Where City="Newyork.";
select count(Sname) from SalesPeople where City="London." or City="Paris."; 
Select SalesPeople.Snum, Orders.Onum, Orders.Odate from Orders inner Join SalesPeople on SalesPeople.Snum=Orders.Snum Where SalesPeople.Snum IN(1001,1002,1003,1004,1007);





































