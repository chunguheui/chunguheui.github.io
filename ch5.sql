use mysql;
create user test4;
select host, user from user;
show tables;
use academy;
show tables;
select *from money_tbl_02;
select *from sales_tbl_03;
show tables;
select *from money_tbl_02;
create table sales_tbl_03 as select * from member_tbl_02;
select *from sales_tbl_03;
select *from sales_tbl03;
create table sales_tbl_03 as select * from member_tbl_02;
drop table sales_tbl_03;
select *from money_tbl_02;
create table sales_tbl_03 as select * from money_tbl_02;
select *from sales_tbl_03;
commit;
create table member as select * from member_tbl_02;
create table member_tbl_03 as select * from member_tbl_02;
start transaction;
update sales_tbl_03 set price=2000, amount=4 where saleno=2016007;
rollback;
select *from sales_tbl_03;
start transaction;
select *from sales_tbl_03;
start transaction;
use academy;
select *from member_tbl_02;
select custname, phone, address from member_tbl_02 order by custno;
select custname, phone, address from member_tbl_02 where custname like '%복%';
select *from member_tbl_02 where joindate between '2015-01-01' and '2015-11-30';
select *from member_tbl_02;
select custname as '이름', phone as '전화번호', address as '주소' from member_tbl_02;
use academy;
select *from member_tbl_02;
select custname as '이름', phone as '전화번호', address as '주소' from member_tbl_02;
select *from member_tbl_02;
select custname, phone, address from member_tbl_02 where custname like '%복%';
select custname, custno, phone from member_tbl_02 where custname like '%복%';
select custname, custno, phone from member_tbl_02d;
select custname, custno, phone from member_tbl_02;
select *from member_tbl_02;
select custname, joindate from member_tbl_02;
select custname, joindate from member_tbl_02;
select *from member_tbl_02 where joindate between '2015-01-01' and '2015-11-30';
select *from member_tbl_02;
select custname as '이름', phone as '전화번호', address as '주소' from member_tbl_02;
use academy;
select *from money_tbl_02;
start transaction;
select *from money_tbl_02;
select max(price), min(price) from money_tbl_02;
select custno, max(price) from money_tbl_02;
select custno, min(price) from money_tbl_02;
select sum(price) from money_tbl_02;
select avg(price) from money_tbl_02;
select * from money_tbl_02;
create view money_view as select custno, saleno, pcost, amount, price from money_tbl_02 where price>=1500;
select * from money_view;
select a.custno, a.custname, a.address, sum(b.price) as '합계금액' from member_tbl_02 inner join money_tbl_02 b on a.custno=b.custno group by  a.custno;
select * from money_tbl_02;
select * from member_tbl_02;
select a.custno, a.custname, a.address, sum(b.price) as '합계금액' from member_tbl_02 inner join money_tbl_02 b on a.custno=b.custno group by  a.custno;
select a.custno, a.custname, a.address, sum(b.price) as '합계금액' from member_tbl_02 a inner join money_tbl_02 b on a.custno=b.custno group by  a.custno ;
select * from money_view;
select a.custno, a.custname, a.address, sum(b.price) as '합계금액' from member_tbl_02 a inner join money_tbl_02 b on a.custno=b.custno group by  a.custno;
select custno, pcost, amount, price from money_tbl_02 where custno in
select * from member_tbl_03;
select custname, phone, address from member_tbl where city='서울' or city='대전' or city='경기';
select custno, pcost, amount, price from money_tbl_02 where custno not in (select custno from member_tbl_02 where address like '서울%');
create view sale_view as select * from sales_tbl_03 union select * from money_tbl_02;
select * from sale_view;
create view sale_cross_views as select a.custno, a.saleno, b.price from sales_tbl_03 a inner join money_tbl_02 b on a.saleno=b.saleno and a.custno=b.custno;
select * from sale_cross_views;