use mysql;
DELIMITER //
DROP PROCEDURE if EXISTS factoria //
CREATE PROCEDURE factoriap()
BEGIN
DECLARE n,fact INT ;
SET n=5;
SET fact=1;
label: WHILE(n>0) DO
SET fact=fact*n;
SET n=n-1;
END WHILE label ;
SELECT CONCAT(fact ,'is the factorial');
END //
DELIMITER ;
CALL factoriap();

