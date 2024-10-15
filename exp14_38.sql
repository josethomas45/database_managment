 set serveroutput on;
show serveroutput;
create or replace function factorial(n int)
return int as fact INT;
begin
fact:=1;
for i IN 1..n loop
fact:=fact * i;
end loop;
return fact;
end;
/

DECLARE
c integer;
result integer;
begin
c:=&c;
result:=factorial(c);
dbms_output.put_line('The factorial is '||result);
end;
/

CREATE OR REPLACE FUNCTION totalCustomers
RETURN number IS
   total number(2) := 0;
BEGIN
   SELECT count(*) into total
   FROM CUSTOMER_38;
   RETURN total;
END;
/

DECLARE 
   c number(2); 
BEGIN 
   c := totalCustomers(); 
   dbms_output.put_line('Total no. of Customers: ' || c); 
END; 
/

create table student_details(rollno int primary key,marks int, phone int);
insert into student_details values(1,36,7894561233);
insert into student_details values(2,42,8974561239);
insert into student_details values(3,23,9874561239);
insert into student_details values(4,35,4567891239);
insert into student_details values(5,19,5647891238);
select * from student_details;

create or replace procedure pro1 as
begin
update student_details set marks=marks+(marks*0.05);
end;
/
begin
pro1;
end;
/

create table customer_details(custid int unique, custname varchar(20),address varchar(20));
create or replace trigger Trigger1
after insert on customer_details
for each row 
begin
dbms_output.put_line('The row is inserted');
end;
/
insert into customer_details values(3,'kevin','kulam villa');
select * from customer_details;


create table employee_details(emp_id int unique ,empname varchar(20),salary int);

create or replace trigger Trigger2
after insert on employee_details
for each row
when (new.salary>20000)
begin
dbms_output.put_line('salary is greater 20000');
end;
/
insert into employee_details values(1,'Jo',300);
insert into employee_details values(2,'lidiya',400);
insert into employee_details values(3,'kevin',23000);
insert into employee_details values(4,'levin',33000);

update employee_details set salary=25000 where emp_id=4;
SELECT * FROM employee_details;


CREATE TABLE cust_count (   count_row INT DEFAULT 0);
INSERT INTO cust_count (count_row) VALUES (0);
CREATE OR REPLACE TRIGGER trg_increment_count
AFTER INSERT ON customer_details
FOR EACH ROW
BEGIN
    UPDATE cust_count
    SET count_row = count_row + 1;
END;
/

CREATE OR REPLACE TRIGGER trg_decrement_count
AFTER DELETE ON customer_details
FOR EACH ROW
BEGIN
    UPDATE cust_count
    SET count_row = count_row - 1;
END;
/

INSERT INTO customer_details VALUES(4, 'Alice', 'Wonderland');
SELECT * FROM cust_count;

DELETE FROM customer_details WHERE custid = 3;
SELECT * FROM cust_count;






