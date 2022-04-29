delimiter //
create procedure bookreturn()
begin
insert into returndetails values(281,515,101,'2022-04-13');
update issuedetails set returnstatus='1' where issueid=515;
end //
delimiter ;
call bookreturn();
select * from returndetails;
select * from issuedetails;