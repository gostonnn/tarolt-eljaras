DELIMITER $$
CREATE PROCEDURE more(OUT less INT, OUT aver DOUBLE, OUT top INT)
BEGIN
	SELECT MIN( fizetes ) INTO less FROM dolgozok;
	SELECT AVG( fizetes ) INTO aver FROM dolgozok;
	SELECT MAX( fizetes ) INTO top FROM dolgozok;
END $$
DELIMITER ;

call more(@min, @avg, @max);
SELECT @min as legkisebb, @avg as átlag, @max as legtöbb

