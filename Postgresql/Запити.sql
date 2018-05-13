select h_name,h_type,h_price,ci_name
from hotels
Left join city on h_id_hotels = ci_id_city
left join accommodation_type on h_id_hotels = a_id_accommodation_type
where h_price between 200 and 450;
-- -----------------------------------------------------------------------------------
select c_id_client,c_surname,c_name,f_name,f_city_of_departure,f_date_of_departure
from client 
join type_of_tour on c_id_client = t_id_type_of_tour
join flights on c_id_client = f_id_flights
where c_id_client = (select f_id_flights from flights 
					 where f_name = 'Airline' and f_date_of_departure = '2018-07-24');
-- -----------------------------------------------------------------------------------
select ts_id_tours,t_type_of_tour,f_name,f_city_of_departure,f_date_of_departure,f_city_arrives,
case 
when ts_price between 100 and 250 then 'low class'
when ts_price between 250 and 500 then 'middle class'
when ts_price between 500 and 1100  then 'high class'
when ts_price between 500 and 1100  then 'vip class'
end
as "Категорія"
from tours
Right Join type_of_tour on ts_id_tours = t_id_type_of_tour
Right Join flights on ts_id_tours = f_id_flights	
-- ---------------------------------------------------------------------------------------------------
select p_id_program,p_type,p_route,p_transport,p_price_in_dollars,tp_date,tp_time,
IF p_route IS NULL 
THEN
     'Дія в готелі';
ELSE
     'за межами готелю';
END IF;
   AS Статус"
from program
inner join tour_program on p_id_program = tp_id_tour_program;
-- ---------------------------------------------------------------------------------------------------
select f_id_flights,f_name,f_city_of_departure,f_date_of_departure,f_date_arrives,f_city_arrives
from flights
join client on f_id_flights = c_id_client
where f_id_flights = (select c_id_client from client
					  where c_surname = 'Freik' and c_name = 'Vlad')
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
when ts_end_date - ts_star_date < 7  then 'Короткотривалий'
when ts_end_date - ts_star_date < 8 and  ts_end_date - ts_star_date > 6 then 'Тижневий'
when ts_end_date - ts_star_date < 8  then  'Довготривалий'
end
as "Категорія"
from tours
join type_of_tour on ts_id_tours = t_id_type_of_tour
join type_of_food on ts_id_tours = tf_id_type_of_food
-- -----------------------------------------------------------------------------------
(select ts_id_tours,ct_name,ct_political_system,ci_name,t_type_of_tour
from tours
join country on ts_id_tours = ct_id_country
join city on ts_id_tours = ci_id_city
join type_of_tour on ts_id_tours = t_id_type_of_tour
where ct_id_country = (select ct_id_country 
from country
where ct_creed = 'Буддизм'))
union
(select ts_id_tours,ct_name,ct_political_system,ci_name,t_type_of_tour
from tours
join country on ts_id_tours = ct_id_country
join city on ts_id_tours = ci_id_city
join type_of_tour on ts_id_tours = t_id_type_of_tour
where ct_id_country = (select ct_id_country 
from country
where ct_creed = 'Протестанство'))
order by ct_name ;




-- -----------------------------------------------------------------------------------





-- -----------------------------------------------------------------------------------






-- -----------------------------------------------------------------------------------