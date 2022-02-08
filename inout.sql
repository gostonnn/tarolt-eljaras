DELIMITER $$
CREATE PROCEDURE inAndOut( INOUT table_data VARCHAR(50) )
BEGIN
		SELECT fizetes INTO table_data FROM dolgozok WHERE nev = table_data;
END $$
DELIMITER ;

SET @table_value = "Berki Krisztián";
call inAndOut( @table_value );
SELECT @table_value as fizetés;


DELIMITER $$
CREATE PROCEDURE inAndOut2( INOUT table_data VARCHAR(50) )
BEGIN
		SELECT nev INTO table_data FROM dolgozok WHERE az = table_data;
END $$
DELIMITER ;

SET @table_value = 5;
call inAndOut2( @table_value );
SELECT @table_value as fizetés;

