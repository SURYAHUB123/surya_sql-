create database surya;
use surya;
#1
create table employeesdetail (name varchar (30) null, id int null, city varchar(20) null, salary int null);
desc employeesdetail;
insert into employeesdetail values ("imran",101,"trichy",50000),("ahamed",102,"bangalore",90000),("siva",103,"chennai",49000),("ismail",104,"madurai",65000);

# (2) create a sales table having columns ID, Product name, price per unit and quantity and then create a view which will show the total cost per each product and product name.
create table listss(ID int,Product_Name varchar(20),Price_Per_Unit int, quantity int);
desc listss;
insert into listss values(201,"pen",15,80),(202,"pencil",4,100),(203,"eraser",50,20),(204,"sharpner",10,40);
create view result as select Product_Name, Price_Per_Unit * quantity AS Total_Cost_of_product from listss;
select*from result;

# (3) sum of ages
create table information(ID int,Name varchar(20), age int);
insert into information values(01,"BOB",21),(02,"SAM",19),(03,"JILL",18),(04,"JIM",21),(05,"SALLY",19),(06,"JESS",20),(07,"WILL",21);
select sum(age) from information;

# (4) group all the people by their age along with a count of the people that are the same age.
select *from  information;
select age,count(age) from information group by age;


# (5) return just the division IDs for all the divisions that had positive revenue in 2021
create table revenuelists(division_ID int, year int,revenue int);
insert into revenuelists values(01,2018,60),(01,2021,40),(01,2020,70),(02,2021,-10),(03,2018,20),(03,2016,40),(04,2021,50);
select division_ID from revenuelists where year=2021 and revenue>0 group by division_ID;