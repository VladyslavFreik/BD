USE TravelAgencies;

-- id туру ціну та тип розміщення де тип туру  = гірськолижний
select ts_id_tours, ts_price,a_accommodation_type
from tours,type_of_tour,accommodation_type 
where ts_id_tours = a_id_accommodation_type
and ts_id_tours = t_id_type_of_tour
and t_type_of_tour = 'Гірськолижні';

-- 
select  h_name,h_price, tf_type_of_food,ci_name,ct_name,ct_creed,ct_attractions
from hotels
Left Join type_of_food on h_id_hotels = tf_id_type_of_food
left join city on h_id_hotels = ci_id_city
left join country on h_id_hotels = ct_id_country
where h_number_of_stars > 3;

-- 
select c_surname, c_name, c_middle_name,c_phone,s_date,tours
from client,sales
where c_id_client = (select s_count from sales 
where s_count = 15);
