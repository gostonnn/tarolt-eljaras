DELIMITER $$
CREATE PROCEDURE variables()
BEGIN
	DECLARE Worker_name Varchar(50) DEFAULT "";
	set Worker_name = "Fekete Pákó";
	SELECT * From dolgozok WHERE nev= Worker_name;
END$$

DELIMITER ;
