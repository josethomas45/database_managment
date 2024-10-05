create table bank38
 (bankcode varchar(20) primary key,
  bankname varchar(20) not null,
  headoffice varchar(20),
  branches int check(branches > 0));
  
  
insert into bank38 values ('SBI','state bank of india','delhi',150);
insert into bank38 values ('SIB','south indian bank','mumbai',60);
insert into bank38 values ('IB','indian bank','hydhrabad',92);
insert into bank38 values ('BOB','bank of baroda','chennai',42);
insert into bank38 values ('SBT','statebanktravancore','trivandrum',70);
insert into bank38 values ('BT','canarabank','ernakulam',70);

select * from bank38;

create table branch38
 (branchid int primary key,
  branchname varchar(20) default 'New Delhi',
  bankid varchar(3),
  foreign key(bankid) references bank38(bankcode) on delete cascade);
  
insert into branch38 values(1,'Kottayam','SBT');
insert into branch38 values(2,'kollam','IB');
insert into branch38 values(3,'Pala','SBI');
insert into branch38 values(4,'Ranni','BOB');
insert into branch38 values(5,'Mukkam','SBI');
insert into branch38 values(6,'Kottayam','IB');
insert into branch38 values(7,'ernakulam','IB');

select * from branch38;

drop table branch38;

create table branch38
 (branchid int primary key,
  branchname varchar(20) default 'New Delhi',
  bankid varchar(3),
  foreign key(bankid) references bank38(bankcode) on delete cascade);
  
insert into branch38 values(1,'Kottayam','SBT');
insert into branch38 values(2,'kollam','IB');
insert into branch38 values(3,'Pala','SBI');
insert into branch38 values(4,'Ranni','BOB');
insert into branch38 values(5,'Mukkam','SBI');
insert into branch38 values(6,'Kottayam','IB');

select * from branch38;

delete from bank38 where bankcode = 'SBT';
select * from bank38;
select * from branch38;

alter table branch38 drop primary key;
desc branch38;

CREATE VIEW bank_headoffice AS 
SELECT * 
FROM bank38 
WHERE headoffice = 'ernakulam';

drop view bank_headoffice; 

CREATE VIEW bank_headoffice AS 
SELECT * 
FROM bank38 
WHERE headoffice = 'ernakulam';


SELECT * FROM bank_headoffice;

CREATE VIEW branch AS SELECT b.* FROM bank38 b JOIN branch38 c ON b.bankcode = c.bankid WHERE c.branchname = 'Kottayam';

select * from branch;
