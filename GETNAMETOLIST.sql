DELIMITER $$
CREATE PROCEDURE getNameList()
BEGIN
DECLARE finished INT DEFAULT 0;
DECLARE name_list VARCHAR (255) DEFAULT "";
DECLARE user_name VARCHAR (50) DEFAULT "";
DECLARE user_data CURSOR FOR SELECT nev FROM dolgozok;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;
OPEN user_data;
get_user_name: LOOP
	FETCH user_data INTO user_name;
		IF finished = 1 THEN
			LEAVE get_user_name;
		END IF;
	SET name_list = CONCAT( name_list, ", ", user_name );
	
END LOOP;
CLOSE user_data;
SELECT name_list;
END $$
DELIMITER ;
