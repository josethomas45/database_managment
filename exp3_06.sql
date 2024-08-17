create table book(book_id number(10),
Title varchar(10),MRP number(20),publisher_id number(13),volume number(2),status varchar(15),
language_id number(5),primary key (book_id),
foreign key (language_id) references language (language_id),foreign key (Publisher_id) references publisher (publisher_id));
create table book_return (issue_id varchar(10),actual_date_of_return varchar(10),late_days varchar(10),late_fee number(10));
create table late_fee_rule (from_days varchar(10),to_days varchar(10),amount number(10));
create table book_author(book_id number(10),author_id varchar(10));
insert into language values(001,'english');
insert into language values(002,'malayalam');
insert into language values(003,'hindi');
commit
