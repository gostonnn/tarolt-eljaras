DELIMITER $$
CREATE PROCEDURE variables()
BEGIN
	DECLARE Worker_name Varchar(50) DEFAULT "";
	set Worker_name = "Fekete Pákó";
	SELECT * From dolgozok WHERE nev= Worker_name;
END$$

DELIMITER ;
-------------------------------------------
2. 

DELIMITER $$
CREATE PROCEDURE vevok()
BEGIN
	SELECT * From vevok;
END$$

DELIMITER ;

3.

DELIMITER $$
CREATE PROCEDURE futarnev()
BEGIN
	DECLARE telefonszam Varchar(50) DEFAULT "";
	set telefonszam = "258369";
	SELECT * From futarok WHERE tel= telefonszam;
END$$

DELIMITER ;

4.

DELIMITER $$
CREATE PROCEDURE more(OUT less INT, OUT aver DOUBLE, OUT top INT)
BEGIN
	SELECT MIN( ar ) INTO less FROM pizzak;
	SELECT AVG( ar ) INTO aver FROM pizzak;
	SELECT MAX( ar ) INTO top FROM pizzak;
END $$
DELIMITER ;

call more(@min, @avg, @max);
SELECT @min as legkisebb, @avg as átlag, @max as legtöbb

5.

DELIMITER $$
CREATE PROCEDURE szovegar2( IN pid_id INT, OUT price VARCHAR(50))
BEGIN
	DECLARE arak INT DEFAULT 0;
	SELECT ar INTO arak FROM pizzak WHERE pid = pid_id;
	IF 700 <  arak AND arak < 900 THEN SET price = "olcso";
		
	ELSEIF 1000 > arak THEN SET price = "drága";
		
	ELSE SET price = "normál";
		
	END IF;
	
END $$
DELIMITER ;

SET @pid_id = 2;
call salaryLevel(@pid_id, @price);
SELECT @price as ar;
----------------------------------------------

6.

FOS

DELIMITER $$
CREATE PROCEDURE vevonevlistaA()
BEGIN
DECLARE finished INT DEFAULT 0;
DECLARE name_list VARCHAR(500) DEFAULT "";
DECLARE user_name VARCHAR(50) DEFAULT "";
DECLARE user_data CURSOR FOR SELECT vevonev FROM vevok;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;
OPEN user_data;
get_user_name: LOOP
	FETCH user_data INTO  user_name;
	IF finished = 1 THEN
		LEAVE get_user_name;
	END IF;
	SET name_list = CONCAT ( name_list, ", ", UPPER( user_name ));
END LOOP get_user_name;
CLOSE user_data;
END $$
DELIMITER ;

7.

DELIMITER $$
CREATE PROCEDURE ujRekord( IN futarnev VARCHAR(50), IN tel INT)
BEGIN
INSERT INTO futarok ( futarnev, tel) VALUES
					( futarnev, tel);
END $$
DELIMITER ;

CALL ujRekord( "LagziLajcsi", "123")

8.

DELIMITER $$
CREATE PROCEDURE  modosit( IN nev VARCHAR(50))
BEGIN
UPDATE vevok SET vevonev = nev WHERE vevonev = "Kuka"; 
END $$
DELIMITER ;

CALL modosit( "ModositottKuka" )

9.

DELIMITER $$
CREATE PROCEDURE torol()
BEGIN
DECLARE top INT DEFAULT 0;
	SELECT MAX( rid ) INTO top FROM rendelesek;
	DELETE FROM rendelesek WHERE rid = top;
END $$
DELIMITER ;

call torol();




