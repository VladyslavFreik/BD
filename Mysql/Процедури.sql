USE TravelAgencies;
-- 1----------------------------------------------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE nazva()
BEGIN

Declare  f_copy_name varchar(30);
Declare  f_copy_city_of_departure varchar(30);
Declare  f_copy_date_time_of_departure datetime; 
Declare  f_copy_city_arrives varchar(30);
Declare  f_copy_date_time_arrives datetime;

DECLARE done integer default 0;
declare my_cursor CURSOR
	FOR SELECT
		f_name,
        f_city_of_departure,
        f_date_time_of_departure,
        f_city_arrives,
        f_date_time_arrives
	FROM
		flights where 1;

DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done=1;

	OPEN my_cursor;  
    
    WHILE done = 0 DO 
	FETCH 
		my_cursor 
	INTO
		f_copy_name,
        f_copy_city_of_departure,
        f_copy_date_time_of_departure,
        f_copy_city_arrives,
        f_copy_date_time_arrives;
	END WHILE;
    CLOSE my_cursor;

END//
call nazva();
-- 2----------------------------------------------------------------------------------------------------




DELIMITER //
CREATE PROCEDURE flights_in_region()
BEGIN

Declare  f_copy_name varchar(30);
Declare  f_copy_city_of_departure varchar(30);
Declare  f_copy_date_time_of_departure datetime; 
Declare  f_copy_city_arrives varchar(30);
Declare  f_copy_date_time_arrives datetime;

DECLARE done integer default 0;
declare my_cursor CURSOR
	FOR SELECT
		f_name,
        f_city_of_departure,
        f_date_time_of_departure,
        f_city_arrives,
        f_date_time_arrives
	FROM
		flights where 1;

DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done=1;

	OPEN my_cursor;  
    
    WHILE done = 0 DO 
	FETCH 
		my_cursor 
	INTO
		f_copy_name,
        f_copy_city_of_departure,
        f_copy_date_time_of_departure,
        f_copy_city_arrives,
        f_copy_date_time_arrives;
	END WHILE;
    CLOSE my_cursor;

END//


