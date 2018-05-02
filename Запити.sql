USE TravelAgencies;

-- id туру ціну та тип розміщення де тип туру  = гірськолижний
-- ----------------------------------------------------------------------------------------------------
select ts_id_tours, ts_price,a_accommodation_type
from tours,type_of_tour,accommodation_type 
where ts_id_tours = a_id_accommodation_type
and ts_id_tours = t_id_type_of_tour
and t_type_of_tour = 'Гірськолижні';

-- ----------------------------------------------------------------------------------------------------
select  h_name,h_price, tf_type_of_food,ci_name,ct_name,ct_creed,ct_attractions
from hotels
Left Join type_of_food on h_id_hotels = tf_id_type_of_food
left join city on h_id_hotels = ci_id_city
left join country on h_id_hotels = ct_id_country
where h_number_of_stars > 3;

-- ---------------------------------------------------------------------------------------------------- 
select c_surname, c_name, c_middle_name,s_date,tours,ts_id_tours,ts_star_date,ts_end_date,ts_price
from client
cross join sales on c_id_client = s_id_sales
cross join tours on c_id_client = ts_id_tours
where c_id_client = (select s_id_sales from sales
where s_count > 14);
-- ----------------------------------------------------------------------------------------------------
select ts_id_tours,ts_price,p_route,p_transport,p_price_in_dollars,f_city_of_departure,
f_date_of_departure,f_city_arrives
from tours
inner join program on ts_id_tours = p_id_program
inner join flights on ts_id_tours = f_id_flights
where ts_id_tours = (select t_id_type_of_tour from type_of_tour 
where t_id_type_of_tour = 3);
-- ----------------------------------------------------------------------------------------------------
select ts_id_tours,ct_name,ci_name,t_type_of_tour
from tours
join country on ts_id_tours = ct_id_country
join city on ts_id_tours = ci_id_city
join type_of_tour on ts_id_tours = t_id_type_of_tour
where ct_id_country = (select ct_id_country from country
where ct_creed = 'Буддизм'); 
-- ----------------------------------------------------------------------------------------------------










