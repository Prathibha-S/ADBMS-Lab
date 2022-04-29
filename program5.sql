create database library;
use library;
CREATE TABLE bookdetails (
    bookno INT PRIMARY KEY,
    bookname VARCHAR(30),
    bookauthor VARCHAR(30)
);
insert into bookdetails values(100,'The Alchemist','Paulo Coehlo');
insert into bookdetails values(101,'The Harrypotter','J K Rowling');
insert into bookdetails values(102,'The Da Vinci Code','Dan Brown');
select * from bookdetails;
create table issuedetails(issueid int primary key,bookno int,foreign key(bookno) references bookdetails(bookno),issuedate date,returnstatus bool);
insert into issuedetails values(511,100,'2021-06-13',1);
insert into issuedetails values(515,101,'2022-03-27',0);
insert into issuedetails values(516,102,'2022-02-04',1);
select * from issuedetails;
create table returndetails(returnid int primary key,issueid int,foreign key(issueid) references issuedetails(issueid),bookno int,foreign key(bookno) references bookdetails(bookno),returndate date);
insert into returndetails values(277,511,100,'2021-06-25');
insert into returndetails values(278,516,102,'2022-03-11');
select * from returndetails;
delimiter //
create procedure orderofbooktitle()
begin
select * from bookdetails order by bookname asc;
end //
delimiter ;
call orderofbooktitle();
