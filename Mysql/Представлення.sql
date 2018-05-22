USE TravelAgencies;
-- 1----------------------------------------------------------------------------------------------------

Create view info_about_client as
select 
	c_id_client as 'id клієнта', 
	c_surname as 'Прізвище клієнта',
	c_name as 'Ім`я клієнта', 
	c_Date_of_birth as 'Дата народження клієнта', 
	s_date as 'Дата продажу білету',
	ts_price as 'Ціна білету',
	f_city_of_departure as 'місто відправки',
	f_date_time_of_departure as'дата відправки',
	f_city_arrives 'місто прибуття',
	f_date_time_arrives as'дата прибуття'
from 
	tours
join 
	flights on flights.f_id_flights = tours.Flights
join 
	sales on sales.Tours = tours.ts_id_tours
join 
	client on client.c_id_client = sales.Client;

select * from info_about_client;

-- 2----------------------------------------------------------------------------------------------------
create view info_about_hotel as
select 
	h_id_hotels as 'id готелю',
	h_name as 'назва готелю',
    h_type as 'тип готелю',
    h_price as 'ціна готелю',
    ci_name as 'місто',
    ct_name as 'країна',
	tf_type_of_food as 'тип харчування',
	a_accommodation_type as 'тип розміщення в готелі'
from 
	hotels
join 
	tours on hotels.h_id_hotels = tours.Hotels
join 
	accommodation_type on accommodation_type.a_id_accommodation_type = hotels.Accommodation_type
join 
	type_of_food on type_of_food.tf_id_type_of_food = tours.Type_of_food
join   
	city on city.ci_id_city = hotels.City
join
	country on country.ct_id_country = city.Country
where h_type not like 'Su%';
 
select * from info_about_hotel; 
  
-- 3----------------------------------------------------------------------------------------------------
create view info_about_tour_program as
select 
	p_id_program as 'id програми',
    p_type as 'тип програми відпочинку',
    p_route as 'шлях',
    p_transport as 'транспорт',
    p_price_in_dollars as 'ціна додаткового відпочинку в доларах',
    tp_date as 'дата',
    tp_time as 'час',
    t_type_of_tour as 'тип туру',
    ts_price as 'ціна туру'
from 
	program
right join 
	tour_program on program.p_id_program =  tour_program.Program
right join
	tours on tours.ts_id_tours = tour_program.Tours
right join
	type_of_tour on type_of_tour.t_id_type_of_tour = tours.Type_of_tour
where p_type = 'перегляд замків' or p_type = 'молодіжна вечірка';

select * from info_about_tour_program;

-- 4----------------------------------------------------------------------------------------------------
create view info_about_flights as

select 

	f_id_flights as 'id авіарейсу',
    f_name as 'назва авіарейсу',
    f_city_of_departure as 'місто відправки',
    f_city_arrives as 'місто прибуття',
    t_type_of_tour as 'тип туру',
    ts_star_date as 'дата початку туру',
    ts_end_date as 'дата кінця туру',
    -- (day(f_date_time_arrives) - day(f_date_time_of_departure))   as 'Час польоту'
    TIME_TO_SEC(f_date_time_arrives) - TIME_TO_SEC(f_date_time_of_departure) as 'Різниця секунд',
	SEC_TO_TIME(TIME_TO_SEC(f_date_time_arrives) - TIME_TO_SEC(f_date_time_of_departure)) AS 'Час польоту'

from 
	flights
join
	tours on f_id_flights = ts_id_tours
join
	type_of_tour on type_of_tour.t_id_type_of_tour = tours.Type_of_tour
where f_date_time_arrives - f_date_time_of_departure  ;

select * from info_about_flights;

-- 5----------------------------------------------------------------------------------------------------
create view country_info as
select 
	ct_id_country as 'id країни',
    ct_name as 'назва країни',
    ci_name as 'назва міста',
    ct_creed as 'віросповідання',
    ct_attractions as 'визначні місця',
    ct_forms_of_government as 'форми правління',
    ct_political_system as 'державний устрій',
    h_name as 'назва готелю',
    h_number_of_stars as 'кількість зірок',
    h_type as 'тип готелю'
from 
	hotels
join 
	city on city.ci_id_city = hotels.City
join 
	country on country.ct_id_country = city.Country

where ct_forms_of_government not like 'к%';

select * from  country_info;





