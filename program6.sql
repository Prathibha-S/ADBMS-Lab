use library;
delimiter //
create procedure issuebook()
begin
insert into issuedetails values(519,102,'2022-04-29',0);
end //
delimiter ;
call issuebook;
select * from issuedetails;