
DELIMITER $$
CREATE PROCEDURE whileloop()

BEGIN
DECLARE x INT default 1;
DECLARE sValue VARCHAR(20) DEFAULT "";

WHILE x <= 5 DO
	SET sValue = CONCAT( sValue, x, ", ");
	SET x = x + 1;
END WHILE;
SELECT sValue;
END $$
DELIMITER ;
-----

DOWHILE

DELIMITER $$
CREATE PROCEDURE dowhile()
BEGIN
DECLARE x INT default 1;
DECLARE sValue VARCHAR(20) DEFAULT "";
REPEAT
	SET sValue = CONCAT( sValue, x, ", ");
	SET x = x + 1;
	UNTIL x >= 5
END REPEAT;
SELECT sValue;
END $$
DELIMITER ;

--

loop

DELIMITER $$
CREATE PROCEDURE loop()
BEGIN
DECLARE x INT default 1;
DECLARE sValue VARCHAR(50) DEFAULT "";

lup:LOOP
	IF x >= 5 THEN
		LEAVE lup;
			END IF;
			SET sValue = CONCAT( sValue, x, ", ");
			SET x = x + 1;
END LOOP;
SELECT sValue;
END $$
DELIMITER ;


