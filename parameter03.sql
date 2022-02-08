DELIMITER $$
CREATE PROCEDURE IN_OUT( IN d_id INT, OUT d_name VARCHAR(50))
BEGIN
		SELECT nev into d_name FROM dolgozok WHERE az = d_id;
END $$
DELIMITER ;

call IN_OUT( "9", @name );
SELECT @name as Név
