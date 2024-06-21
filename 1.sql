use sys;
select * from sys_config;
describe sys_config;

select * from sys_config where value = 'OFF';

create database Lab1;
use Lab1;
show tables;
create table persons(Person_id char(3) not null,RateHour int(2) default null,Person_name varchar(100) default null,address varchar(100) default null,BirthDate date default null,
Primary key (Person_id));
show tables;
describe persons;
insert into persons (Person_id,RateHour,Person_name,address,BirthDate) Values('002',10,'นัชชา สีกัน','ท่าศาลา เมืองเหนือ','1975-01-03');
insert into persons (Person_id,RateHour,Person_name,address,BirthDate) Values ('001',1000,'นัชชา สีกัน','ท่าศาลา เมืองเหนือ','1975-01-03');
insert into persons (Person_id,RateHour,Person_name,address,BirthDate) Values ('003',1000,'นัชชา สีกัน','ท่าศาลา เมืองเหนือ','1975-01-03');
select * from persons;
select * from persons where Person_id = '001';
alter table persons add BirthDate  date;
update persons set Person_name = 'เบญจมาศ แสนสวยงาม' where Person_id = '001';
delete from persons where Person_id = '001';
select * from persons;
create table persons(Person_id char(3) not null,RateHour int(2) default null,Person_name varchar(100) default null,address varchar(100) default null,BirthDate date default null,
Primary key (Person_id));
alter table persons RENAME Employees;
alter table Employees ADD COLUMN Employees_id char(1);
