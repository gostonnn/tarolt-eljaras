kimenő

DELIMITER $$
CREATE PROCEDURE outdata( OUT out_id INT )
	BEGIN
		
		SELECT az INTO out_id FROM dolgozok WHERE nev = "Para Lajos";
	END $$
DELIMITER ;

call outdata( @id );
SELECT @id as azonosito;


//DECLARE id_out INT DEFAULT 0;


DELIMITER $$
CREATE PROCEDURE pez( OUT fizu INT )
	BEGIN
		SELECT fizetes INTO fizu FROM dolgozok WHERE az = 4;
	END $$
DELIMITER ;

call pez( @fizetes );
SELECT @fizetes as fizu;

fizu átlag

DELIMITER $$
CREATE PROCEDURE fizuatlag( OUT atlag float )
	BEGIN
		SELECT AVG(fizetes) INTO atlag FROM dolgozok;
	END $$
DELIMITER ;

call fizuatlag( @fizetes );
SELECT @fizetes as fizuATLAG;


