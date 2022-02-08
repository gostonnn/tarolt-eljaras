DELIMITER $$
CREATE PROCEDURE more(OUT less INT, OUT aver DOUBLE, OUT top
BEGIN
	SELECT MIN( fizetes ) INTO less FROM dolgozok;
	SELECT AVG( fizetes ) INTO aver FROM dolgozok;
	SELECT MAX( fizetes ) INTO top FROM dolgozok;
END $$
DELIMITER ;
