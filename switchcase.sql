DELIMITER $$
CREATE PROCEDURE getSalaryLevel( OUT sLevel VARCHAR(10), OUT average INT )
BEGIN
DECLARE average_sal INT DEFAULT 0;
DECLARE average INT DEFAULT 0;

SELECT AVG(fizetes) INTO average_sal FROM dolgozok LIMIT 10;
	CASE
		WHEN average_sal < 2800000 THEN
			SET sLevel = "alacsony";
			
		WHEN average_sal > 2800000 AND average_sal < 5000000 THEN
			SET sLevel = "átlagos";
			
		WHEN average_sal > 5000000 THEN
			SET sLevel = "magas";
			
		ELSE
			SET average_sal = "ismeretlen";
	END CASE;
	
END $$
DELIMITER ;

call getSalaryLevel( @level, @average );
SELECT @level as Szint, @average as Átlag;

---

DELIMITER $$
CREATE PROCEDURE ar( IN pid_id INT, OUT price VARCHAR(50))
BEGIN
	DECLARE arak INT DEFAULT 0;
	SELECT fizetes INTO arak FROM dolgozok WHERE az = pid_id;
	
		CASE
	WHEN  2800000 <  arak THEN SET price = "ÁTLAGOS";
	
	WHEN 5000000 < arak THEN SET price = "magas";
		
	WHEN 2800000 > arak THEN SET price = "alacsony";
		
	ELSE SET price = "ismeretlen";
		
	END CASE;
	
END $$
DELIMITER ;

SET @pid_id = 2;
call salaryLevel(@pid_id, @price);
SELECT @price as FIZETÉS;

