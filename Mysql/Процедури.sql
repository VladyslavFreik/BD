USE TravelAgencies;
-- 1----------------------------------------------------------------------------------------------------
drop table flight_route;
Create table flight_route(
  f_copy_id_flights int ,	
  f_copy_name varchar(30),
  f_copy_city_of_departure varchar(30),
  f_copy_date_time_of_departure datetime, 
  f_copy_city_arrives varchar(30),
  f_copy_date_time_arrives datetime,
  PRIMARY KEY (f_copy_id_flights));

drop procedure flight_route_procedure;

DELIMITER //
CREATE PROCEDURE flight_route_procedure(start_city varchar(30),end_city varchar(30))
BEGIN
Declare  id int(6);
Declare  copy_name varchar(30);
Declare  copy_city_of_departure varchar(30);
Declare  copy_date_time_of_departure datetime; 
Declare  copy_city_arrives varchar(30);
Declare  copy_date_time_arrives datetime;
declare a varchar(50);
declare b varchar(50);


DECLARE done integer default 0;
declare my_cursor CURSOR
	FOR SELECT
		f_id_flights,
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
		id,
		copy_name,
        copy_city_of_departure,
        copy_date_time_of_departure,
        copy_city_arrives,
        copy_date_time_arrives;
        
        replace into flight_route values (id,copy_name, copy_city_of_departure,copy_date_time_of_departure,copy_city_arrives,copy_date_time_arrives);        
	END WHILE;
    CLOSE my_cursor;
    
 set a =   (select concat(f_copy_city_of_departure,' - ',f_copy_city_arrives) as 'Маршрут'
        from  flight_route
		where f_copy_city_of_departure = start_city and  f_copy_city_arrives = end_city);
        
 set b =   (select GROUP_CONCAT(f_copy_city_of_departure,' - ',f_copy_city_arrives)  as 'Маршрути додаткові'
        from  flight_route
        where f_copy_city_arrives = end_city and f_copy_city_of_departure!= start_city);

select 
	a as 'Вибраний маршрут',b as 'Додаткові маршрути',ct_name as 'Назва країни',ct_creed as 'Віра',
    ct_forms_of_government 'Форми правління',ct_political_system as 'Державний устрій'
from
	country 
join
	city on city.Country = country.ct_id_country
where ci_name = end_city;

 

END//
call flight_route_procedure('Київ','Берлін');
-- 2----------------------------------------------------------------------------------------------------



