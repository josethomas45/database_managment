
create table items38(
 itemid int primary key,
 Itemname varchar(50) not null,
 category varchar(50),
 Price decimal(10,2) not null,
 Instock int check(Instock >= 0)
 );
 
 create table customers_38(
 custid int primary key,
 Custname varchar(50) not null,
 address varchar(100),
 state varchar(50)
 );
 
 create table orders_38(
 orderid int primary key,
 Itemid int,
 Custid int,
 quantity int not null,
 orderdate date not null,
 foreign key(Itemid)references items_38(itemid),
 foreign key(orderid)references customers_38(custid)
 );

 
 
 create table delivery_38(
 deliveryid int primary key,
 Custid int,
 Orderid int,
  foreign key(orderid)references customers_38(custid),
  foreign key(Orderid)references orders_38(orderid)
  );
   insert into items_38 values(1,'Samsung Galaxy S4','smartphone',4299.99,50);
   insert into items_38 values(2,'macbook pro','laptop',6491.99,30);
   insert into items_38 values(3,'sony wh','headphones',5499.9,100);
   insert into items_38 values(4,'sony','smarttv',5299.99,80);
   select * from items_38;
   
  insert into customers_38 values(1,'Sabu','144galaxyline','Andra');
  insert into customers_38 values(2,'Mickey','1456wilstonline','gujarat');
  insert into customers_38 values(3,'Nagu','RJ street','TamilNadu');
  insert into customers_38 values(4,'Jordan','GandhiStreet','Rajasthan');
  select * from customers_38;
   
  insert into orders_38 values(1,1,1,1,DATE '2024-01-15');
  insert into orders_38 values(2,2,2,1,DATE '2024-02-20');
  insert into orders_38 values(3,3,3,1,DATE '2024-03-25');  
  insert into orders_38 values(4,4,4,2,DATE '2024-04-10');   
  select * from orders_38;
   
    SELECT * FROM orders_38;
  insert into delivery_38 values(1,1,1);    
  insert into delivery_38 values(2,1,2);
  insert into delivery_38 values(3,2,3);
  insert into delivery_38 values(4,3,4);    
  select *from delivery_38;
 
 
 
 
 
 
 
 