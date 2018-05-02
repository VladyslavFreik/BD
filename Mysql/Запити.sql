USE TravelAgencies;

-- id туру ціну та тип розміщення де тип туру  = гірськолижний
-- 1----------------------------------------------------------------------------------------------------
select ts_id_tours, ts_price,a_accommodation_type
from tours,type_of_tour,accommodation_type 
where ts_id_tours = a_id_accommodation_type
and ts_id_tours = t_id_type_of_tour
and t_type_of_tour = 'Гірськолижні';

-- 2----------------------------------------------------------------------------------------------------
select h_id_hotels, h_name,h_price, tf_type_of_food,ci_name,ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system
from hotels
Left Join type_of_food on h_id_hotels = tf_id_type_of_food
left join city on h_id_hotels = ci_id_city
left join country on h_id_hotels = ct_id_country
where h_number_of_stars > 3;

-- 3---------------------------------------------------------------------------------------------------- 
select c_surname, c_name, c_middle_name,s_date,tours,ts_id_tours,ts_star_date,
ts_end_date,ts_price
from client
cross join sales on c_id_client = s_id_sales
cross join tours on c_id_client = ts_id_tours
where c_id_client = (select s_id_sales from sales
where s_count > 14);
-- 4----------------------------------------------------------------------------------------------------
select ts_id_tours,ts_price,p_route,p_transport,p_price_in_dollars,
f_name,f_city_of_departure,f_date_of_departure,f_city_arrives
from tours
inner join program on ts_id_tours = p_id_program
inner join flights on ts_id_tours = f_id_flights
where ts_id_tours = (select t_id_type_of_tour from type_of_tour 
where t_id_type_of_tour = 3);
-- 5----------------------------------------------------------------------------------------------------
select ts_id_tours,ct_name,ct_forms_of_government,ci_name,t_type_of_tour
from tours
join country on ts_id_tours = ct_id_country
join city on ts_id_tours = ci_id_city
join type_of_tour on ts_id_tours = t_id_type_of_tour
where ct_id_country = (select ct_id_country 
from country
where ct_attractions = 'Бранденбурзькі ворота'); 
-- -6---------------------------------------------------------------------------------------------------
select t_type_of_tour,ts_price,h_name,h_number_of_stars
from tours
inner join type_of_tour on ts_id_tours = t_id_type_of_tour
inner join hotels on h_id_hotels = t_id_type_of_tour
group by t_type_of_tour having ts_price between 100 and 400;
-- 7----------------------------------------------------------------------------------------------------
select p_id_program,p_type,p_route,p_transport,p_price_in_dollars,tp_date,tp_time,
IF((p_route) is null,'Дія в готелі','за межами готелю') AS `Статус`
from program
inner join tour_program on p_id_program = tp_id_tour_program;
-- 8----------------------------------------------------------------------------------------------------
select h_name,h_type,h_number_of_stars,h_price,ci_name,
if ((h_price) between 100 and 210 , 'малобюджетні',
if ((h_price) between 210 and 410, 'середньобюджетні','високобюджетні')) as `Категорія`
from hotels
join city on h_id_hotels = ci_id_city;
-- 9----------------------------------------------------------------------------------------------------

select h_name,h_type,h_number_of_stars,h_price,ci_name,
case 
when h_price between 100 and 250 then 'малобюджетні'
when h_price between 250 and 500 then 'середньобюджетні'
when h_price between 500 and 1100  then 'високобюджетні'
end
 as `Категорія`
from hotels
join city on h_id_hotels = ci_id_city;
-- 10---------------------------------------------------------------------------------------------------
(select ts_id_tours,ct_name,ct_political_system,ci_name,t_type_of_tour
from tours
join country on ts_id_tours = ct_id_country
join city on ts_id_tours = ci_id_city
join type_of_tour on ts_id_tours = t_id_type_of_tour
where ct_id_country = (select ct_id_country 
from country
where ct_creed = 'Буддизм'))
union
(select ts_id_tours,ct_name,ct_creed,ct_forms_of_government,ci_name,t_type_of_tour
from tours
join country on ts_id_tours = ct_id_country
join city on ts_id_tours = ci_id_city
join type_of_tour on ts_id_tours = t_id_type_of_tour
where ct_id_country = (select ct_id_country 
from country
where ct_creed = 'Протестанство'))
order by ct_name ;








