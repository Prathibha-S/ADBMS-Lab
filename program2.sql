use mysql;
DELIMITER //
CREATE PROCEDURE largestofthree()
BEGIN
DECLARE a,b,c INT ;
SET a=106;
SET b=20;
SET c= 10;
if(a>=b) then
if(a>=c) then
select concat (a,'is the largest number');
end if;
else
if(b>=c) then
select concat (b,'is the largest number');
Else
select concat (c,'is the largest number');
end if;
end if;
END //
DELIMITER ;
call largestofthree();