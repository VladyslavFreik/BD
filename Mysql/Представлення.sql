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
	f_date_of_departure as 'дата відправки',
	f_city_arrives 'місто прибуття',
	f_date_arrives 'дата прибуття'
from 
	client
join 
	flights on c_id_client = f_id_flights
join 
	sales on c_id_client = s_id_sales
join 
	tours on c_id_client = ts_id_tours;

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
	accommodation_type on h_id_hotels = a_id_accommodation_type
join 
	type_of_food on h_id_hotels = tf_id_type_of_food
join   
	city on h_id_hotels = ci_id_city
join
	country on h_id_hotels = ct_id_country
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
	tour_program on p_id_program = tp_id_tour_program
right join
	tours on p_id_program = ts_id_tours
right join
	type_of_tour on p_id_program = t_id_type_of_tour
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
    f_time_arrives - f_time_of_departure as 'Час польоту',
    f_date_arrives - f_date_of_departure as 'Днів польоту'
from 
	flights
join
	tours on f_id_flights = ts_id_tours
join
	type_of_tour on f_id_flights = t_id_type_of_tour
where f_time_arrives - f_time_of_departure < 12;

select * from info_about_flights;

-- 5----------------------------------------------------------------------------------------------------
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
	country
join 
	city on ct_id_country = ci_id_city
join 
	hotels on ct_id_country = h_id_hotels
where ct_forms_of_government not like 'к%';















