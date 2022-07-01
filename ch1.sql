use company;
create table board(bno int(11) primary key, btitle varchar(100), bname varchar(10), bdate varchar(10), btext varchar(1500));
desc board;
commit;
insert into board(bno, btitle, bname, bdate, btext) values('10001', '가입 인사드립니다.', '정우희','22-04-28', '가나다라마바사아자차카타파하');
select * from board;
commit;
select * from board;
drop table board;
select * from board;

create table board(bno int(11) primary key auto_increment,
	btitle varchar(100) not null,
    bcontent varchar(1000) not null,
    regdate timestamp not null default now(),
    author varchar(20));
    
insert into board values (1, "1게시판 제목 테스트 입니다.",'여기는 1게시판 테스트에 대한 내용입니다.','22-04-28','관리자');    
insert into board values (2, "1게시판 제목 테스트 입니다.",'여기는 2게시판 테스트에 대한 내용입니다.','22-04-28','관리자');
insert into board values (3, "1게시판 제목 테스트 입니다.",'여기는 3게시판 테스트에 대한 내용입니다.','22-04-28','관리자');
insert into board values (4, "1게시판 제목 테스트 입니다.",'여기는 4게시판 테스트에 대한 내용입니다.','22-04-28','관리자');
insert into board values (5, "1게시판 제목 테스트 입니다.",'여기는 5게시판 테스트에 대한 내용입니다.','22-04-28','관리자');
insert into board values (6, "1게시판 제목 테스트 입니다.",'여기는 6게시판 테스트에 대한 내용입니다.','22-04-28','관리자');
insert into board values (7, "1게시판 제목 테스트 입니다.",'여기는 7게시판 테스트에 대한 내용입니다.','22-04-28','관리자');
insert into board values (8, "1게시판 제목 테스트 입니다.",'여기는 8게시판 테스트에 대한 내용입니다.','22-04-28','관리자');
insert into board values (9, "1게시판 제목 테스트 입니다.",'여기는 9게시판 테스트에 대한 내용입니다.','22-04-28','관리자');
insert into board values (10, "1게시판 제목 테스트 입니다.",'여기는 10게시판 테스트에 대한 내용입니다.','22-04-28','관리자');

select * from board;
commit;
    
use company;
select * from board;
use company;
drop table board;
    