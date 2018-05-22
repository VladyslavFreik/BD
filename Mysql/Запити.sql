
USE TravelAgencies;

-- id туру ціну та тип розміщення де тип туру  = гірськолижний
-- 1----------------------------------------------------------------------------------------------------
select ts_id_tours, ts_price,h_name,h_type
from tours,type_of_tour,hotels 
where type_of_tour. t_id_type_of_tour = tours.Type_of_tour
and hotels.h_id_hotels  = tours.Hotels
and t_type_of_tour = 'Гірськолижні';
-- 2----------------------------------------------------------------------------------------------------
select h_id_hotels, h_name,h_price, tf_type_of_food,ci_name,ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system,ts_price
from tours
Left Join type_of_food on type_of_food.tf_id_type_of_food =  tours.Type_of_food
left join hotels on hotels.h_id_hotels = tours.Hotels 
left join city on city.ci_id_city = hotels.City
left join country on city.Country = country.ct_id_country
where h_number_of_stars > 4;

-- 3---------------------------------------------------------------------------------------------------- 
select c_surname, c_name, c_middle_name,s_date,tours,ts_id_tours,ts_star_date,
ts_end_date,ts_price
from client
cross join sales on client.c_id_client = sales.Client
cross join tours on tours.ts_id_tours = sales.Tours
where c_id_client = Any(select s_id_sales from sales
where s_count > 14);
-- 4----------------------------------------------------------------------------------------------------
select ts_id_tours,ts_price,p_route,p_transport,p_price_in_dollars,tp_date,
f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives
from tour_program
inner join program on program.p_id_program = tour_program.Program
inner join tours on tours.ts_id_tours = tour_program.Tours
inner join flights on flights.f_id_flights = tours.Flights
where ts_id_tours = any(select t_id_type_of_tour from type_of_tour 
where t_id_type_of_tour = 3 or t_id_type_of_tour = 14 );
-- 5----------------------------------------------------------------------------------------------------
select ts_id_tours,ct_name,ct_forms_of_government,ci_name,t_type_of_tour
from tours
join hotels on hotels.h_id_hotels = tours.Hotels
join city on city.ci_id_city = hotels.City
join country on country.ct_id_country = city.Country
join type_of_tour on type_of_tour.t_id_type_of_tour = tours.Type_of_tour
where ct_id_country = any(select ct_id_country 
from country
where ct_attractions = 'Бранденбурзькі ворота' or ct_attractions = 'Анапурна' ); 
-- -6---------------------------------------------------------------------------------------------------
select t_type_of_tour,ts_price,h_name,h_number_of_stars
from tours
inner join type_of_tour on type_of_tour.t_id_type_of_tour = tours.Type_of_tour
inner join hotels on h_id_hotels = tours.Hotels
group by t_type_of_tour having ts_price between 100 and 400;
-- 7----------------------------------------------------------------------------------------------------
select p_id_program,p_type,p_route,p_transport,p_price_in_dollars,tp_date,tp_time,
IF((p_route) is null,'Дія в готелі(поблизу готеля)','за межами готелю') AS `Статус`
from program
inner join tour_program on tour_program.Program =p_id_program;
-- 8----------------------------------------------------------------------------------------------------
select h_name,h_type,h_number_of_stars,h_price,ci_name,
if ((h_price) between 100 and 210 , 'малобюджетні',
if ((h_price) between 210 and 410, 'середньобюджетні','високобюджетні')) as `Категорія`
from hotels
join city on city.ci_id_city = hotels.City;
-- 9----------------------------------------------------------------------------------------------------

select h_name,h_type,h_number_of_stars,h_price,ci_name,
case 
when h_price between 1 and 250 then 'малобюджетні'
when h_price between 250 and 500 then 'середньобюджетні'
when h_price > 500  then 'високобюджетні'
end
 as `Категорія`
from hotels
join city on city.ci_id_city = hotels.City;
-- 10---------------------------------------------------------------------------------------------------
(select ts_id_tours,ct_name,ct_political_system,ci_name,t_type_of_tour
from tours
join hotels on hotels.h_id_hotels = tours.Hotels
join city on city.ci_id_city = hotels.City
join country on country.ct_id_country = city.Country
join type_of_tour on type_of_tour.t_id_type_of_tour = tours.Type_of_tour
where ct_id_country = Any(select ct_id_country 
from country
where ct_creed = 'Христианство'))
union
(select ts_id_tours,ct_name,ct_political_system,ci_name,t_type_of_tour
from tours
join hotels on hotels.h_id_hotels = tours.Hotels
join city on city.ci_id_city = hotels.City
join country on country.ct_id_country = city.Country
join type_of_tour on type_of_tour.t_id_type_of_tour = tours.Type_of_tour
where ct_id_country = (select ct_id_country 
from country
where ct_creed = 'Протестанство'))
order by ct_name ;


