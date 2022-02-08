CREATE PROCEDURE ( IN parameter_name INT )
CREATE PROCEDURE ( IN parameter_name VARCHAR(50) )


DELIMITER $$
CREATE PROCEDURE berki( IN b_id INT )
BEGIN
		SELECT * FROM dolgozok WHERE az = b_id;
END $$
DELIMITER ;

SET @id = 10;
CALL berki( @id )


esztergom

DELIMITER $$
CREATE PROCEDURE berki( IN eszt_varos VARCHAR(50) )
BEGIN
		SELECT * FROM dolgozok WHERE telepules = eszt_varos;
END $$
DELIMITER ;

call esztergom( "Esztergom")


DELIMITER $$
CREATE PROCEDURE fizu( IN sok_fiz INT )
BEGIN
		SELECT * FROM dolgozok WHERE fizetes = sok_fiz;
END $$
DELIMITER ;

call fizu( "2875000" )
