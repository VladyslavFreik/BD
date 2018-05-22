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
CREATE PROCEDURE flight_route_procedure(start_city varchar(70),end_city varchar(70))
BEGIN
Declare  id int(6);
Declare  copy_name varchar(30);
Declare  copy_city_of_departure varchar(30);
Declare  copy_date_time_of_departure datetime; 
Declare  copy_city_arrives varchar(30);
Declare  copy_date_time_arrives datetime;
declare a varchar(70);
declare b varchar(500);


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
		where f_copy_city_of_departure = start_city and  f_copy_city_arrives = end_city limit 1);
        
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
call flight_route_procedure('Львів','Дубаї');
-- 2----------------------------------------------------------------------------------------------------

DELIMITER //

CREATE PROCEDURE birthday()

BEGIN 



 LOOP



IF _end THEN LEAVE wet;

END IF;
END LOOP ;

CLOSE curf;


END // 


CALL birthday() //

SELECT * FROM birth//


drop procedure sales_in_time;

delimiter //
create procedure sales_in_time (in date1 date, in date2 date) 
begin
select c_surname, c_name,s_count,ts_price,s_date,
h_name,h_price  from client
inner join sales on sales.Client = client.c_id_client
inner join tours on tours.ts_id_tours = sales.tours
inner join hotels on hotels.h_id_hotels = tours.Hotels
where s_date between date1 and date2;
end //

call sales_in_time('2018-05-13','2018-05-24');



drop procedure sale;

delimiter //
create procedure sale ()
begin
select c_surname,c_name,s_count,s_date,ts_price,
case 
when ts_price * s_count > 2000 and ts_price * s_count < 5000 then 'Скидка 25% на наступний квиток' 
when ts_price * s_count >= 5000 and ts_price * s_count < 10000  then 'Скидка 35% на наступний квиток'
when ts_price * s_count >= 10000 then 'Скидка 50% на наступний квиток'
else 'Скидки немає'
end
as 'Скидка'
from client 
Left join sales on client.c_id_client = sales.Client
Left join tours on tours.ts_id_tours = sales.Tours;
end //

call sale();











