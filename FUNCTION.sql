DELIMITER $$
CREATE FUNCTION nameUpper( user_name VARCHAR (50))
RETURNS VARCHAR(50) DETERMINISTIC
BEGIN
return UPPER( user_name );
END $$
DELIMITER;

-----
UJADAT

DELIMITER $$
CREATE PROCEDURE setData( IN name VARCHAR(50), IN city VARCHAR(50), IN salary DOUBLE )

INSERT INTO dolgozok( nev, telepules, fizetes ) VALUES ( name, city, salary );
BEGIN

END $$
DELIMITER ;

- update

DELIMITER $$
CREATE PROCEDURE updateData( IN name VARCHAR(50), IN city VARCHAR(50), IN salary DOUBLE, IN id INT )

BEGIN
	UPDATE dolgozok SET nev = name, telepules = city, fizetes = salary
	WHERE az = id;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE delete( IN id INT )

BEGIN
	DELETE FROM dolgozok WHERE az = id;

END $$
DELIMITER ;

call deleteData(11);
