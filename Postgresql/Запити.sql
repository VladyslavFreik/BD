select h_name,h_type,h_price,ci_name
from hotels
Left join city on city.ci_id_city = hotels.city
left join accommodation_type on hotels.accommodation_type = accommodation_type.a_id_accommodation_type
where h_price between 200 and 450;
-- -----------------------------------------------------------------------------------
select c_id_client,c_surname,c_name,f_name,f_city_of_departure,f_date_time_of_departure
from tours 
join sales on  tours.ts_id_tours = sales.tours
join flights on flights.f_id_flights = tours.flights
join client on client.c_id_client = sales.client
where c_id_client = (select f_id_flights from flights 
					 where f_name = 'Airline' and f_date_time_of_departure = '2018-06-12 23:59:59');
-- -----------------------------------------------------------------------------------
select ts_id_tours,t_type_of_tour,f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,
case 
when ts_price between 50 and 250 then 'low class'
when ts_price between 250 and 500 then 'middle class'
when ts_price between 500 and 1100  then 'high class'
when ts_price > 500  then 'vip class'
end
as "Категорія"
from tours
Right Join type_of_tour on type_of_tour.t_id_type_of_tour = tours.type_of_tour
Right Join flights on flights.f_id_flights = tours.flights;
-- ---------------------------------------------------------------------------------------------------
select p_id_program,p_type,p_route,p_transport,p_price_in_dollars,tp_date,tp_time,
IF p_route is NULL or p_route = 'немає'
THEN
     'Дія в готелі';
ELSE
     'за межами готелю';
END IF;
   AS Статус"
from program
inner join tour_program on  tour_program.program = program.p_id_program ;
-- ---------------------------------------------------------------------------------------------------
select f_id_flights,f_name,f_city_of_departure,f_date_time_of_departure,f_date_time_arrives,f_city_arrives
from tours 
join sales on  tours.ts_id_tours = sales.tours
join flights on flights.f_id_flights = tours.flights
join client on client.c_id_client = sales.client
where f_id_flights = (select c_id_client from client
					  where c_surname = 'Freik' and c_name = 'Vlad');
-- -----------------------------------------------------------------------------------
/*
 select t_type_of_tour,ts_price,ts_star_date,ts_end_date,tf_type_of_food,
 IF ts_end_date - ts_star_date < 7 THEN
 RAISE NOTICE 'Короткотривалий'
 ELSE IF (ts_end_date - ts_star_date) > 8 and  ts_end_date - ts_star_date > 6 THEN
 RAISE NOTICE 'Тижневий'
 ELSE  (ts_end_date - ts_star_date) > 8 THEN
 RAISE NOTICE 'Довготривалий'
 END IF;
 from tours
 join type_of_tour on ts_id_tours = t_id_type_of_tour
 join type_of_food on ts_id_tours = tf_id_type_of_food
 */
select t_type_of_tour,ts_price,ts_star_date,ts_end_date,tf_type_of_food,
case 
when ts_end_date - ts_star_date <= 7  then 'Короткотривалий'
when ts_end_date - ts_star_date < 8 and  ts_end_date - ts_star_date > 6 then 'Тижневий'
when ts_end_date - ts_star_date >= 8  then  'Довготривалий'
end 
as "Категорія"
from tours
Left Join type_of_tour on type_of_tour.t_id_type_of_tour = tours.type_of_tour
Left Join type_of_food on type_of_food.tf_id_type_of_food = tours.type_of_food
order by length(tf_type_of_food);
-- -----------------------------------------------------------------------------------
(select ct_id_country,ct_name,h_name,h_type,h_number_of_stars
from country
 join city on city.country = country.ct_id_country
join hotels on hotels.city = city.ci_id_city
where ct_id_country = any(select h_id_hotels from hotels
where h_type = 'Apartment' and  h_number_of_stars = 4))
UNION
(select ct_id_country,ct_name,h_name,h_type,h_number_of_stars
from country
 join city on city.country = country.ct_id_country
join hotels on hotels.city = city.ci_id_city
where ct_id_country = any(select h_id_hotels from hotels
where h_type = 'President' and  h_number_of_stars = 5));
-- -----------------------------------------------------------------------------------
select p_id_program,p_type,p_route,p_transport,tp_date,tp_time
from program,tour_program
where program.p_id_program = tour_program.program
and tp_date = '2018-06-24' and tp_time is not null ;
-- -----------------------------------------------------------------------------------
select ts_id_tours,ts_star_date,ts_end_date,ts_price,tf_type_of_food,
h_name,a_accommodation_type
from tours
right join hotels on hotels.h_id_hotels = tours.hotels
right join type_of_food on type_of_food.tf_id_type_of_food = tours.type_of_food
right join accommodation_type on accommodation_type.a_id_accommodation_type = hotels.accommodation_type
where ts_id_tours = ANY(select p_id_program from program 
                    where p_route is null);
-- -----------------------------------------------------------------------------------
select c_surname, c_name, c_middle_name,s_date,tours,ts_id_tours,ts_star_date,
ts_end_date,ts_price
from client
right join sales on client.c_id_client = sales.Client
right join tours on tours.ts_id_tours = sales.Tours
where c_id_client = ALL(select s_id_sales from sales
where s_count = 14);
-- -----------------------------------------------------------------------------------