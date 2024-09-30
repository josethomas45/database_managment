create table bank(bank_id int primary key, bank_name varchar(20),head_office varchar(20),branch varchar(20),branch_code varchar(20));

select * from bank;

insert into bank values (1,'canara','delhi','pala',111);
insert into bank values (2,'sbi','mumbai','kottayam',112);
insert into bank values (3,'sbt','hydhrabad','tvm',113);

commit;
savepoint A;
delete from bank where bank_id=2;

select * from bank;
rollback to savepoint A;

select * from bank;

insert into bank values (4,'hdfc','pune','kochi',114);
select * from bank;

rollback to savepoint A;
select * from bank;

savepoint A;
rollback to savepoint A;
rollback;

select * from bank;

commit;

