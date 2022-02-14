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

