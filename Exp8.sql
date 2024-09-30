create table customer(customer_id int primary key,customer_Name varchar(30),contactNo int,Address varchar(10),City varchar(10),PostalCode int,Country varchar(10));
Create table Orders (Order_id int primary key,Customer_id varchar(20), Employee_id varchar(10),OrderDate date, Shipper_id int);
foreign key(customer_id)references customer(customer_id),foreign key(employees_ID)references Employees (Employee_id);
create table Employee(Employee_ID int primary key,LastName varchar(10),FirstName varchar(20),BirthDate date);
insert into customer values(1,'edward',9947691112,'h villa','chickago',1789,'usa');
insert into customer values(2,'alan',9947296923,'hp villa','chickago',1879,'usa');
insert into customer values(3,'joji',9658474152,'rh villa','chickago',1947,'usa');
insert into customer values(4,'siju',9663524174,'ph villa','chickago',1078,'usa');
insert into customer values(5,'jomit',8596744152,'mh villa','chickago',1696,'usa');
insert into employee values(10,'baby','jerik','25-02-1970');
insert into employee values(11,'joby','joshy','26-04-1936');
insert into employee values(12,'john','sabu','29-04-1946');
insert into employee values(13,'hobby','soby','30-04-1920');
insert into employee values(14,'babu','alan','26-05-1923');
insert into Orders values(10,'a15','a16',
comit
