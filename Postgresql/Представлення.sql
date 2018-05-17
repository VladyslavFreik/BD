create view clients as
select 
	c_id_client,concat (c_surname,' ',c_name )  as "Прізвище та ім`я",age( c_date_of_birth) as "Вік", s_count * ts_price as "Загальна вартість"
from 
	client
right join 
	sales on client.c_id_client = sales.Client
right join 
	tours on tours.ts_id_tours = sales.Tours
where 
	s_count * ts_price between 4000 and 6000
order by 
	s_count * ts_price desc;

select * from clients;
-- -----------------------------------------------------------------------------------
/*select c_id_client,concat (c_surname,' ',c_name )  as "Прізвище та ім`я", age( c_date_of_birth) as "Вік", s_count * ts_price as "Загальна вартість",
case 
when age( c_date_of_birth) < age( '2000-12-12')  then 'Неповнолітнім особам продаж білетів не дозволений'
when age( c_date_of_birth) > age( '2000-12-12') then 'Особа повнолітня дозвіл на купівлю білетів'
end
from 
	client
Join 
	Sales on c_id_client = s_id_sales
Join 
	tours on c_id_client = ts_id_tours*/
-- -----------------------------------------------------------------------------------
create view livingPrice as
select 
	h_id_hotels,h_name,h_price,a_accommodation_type,tf_type_of_food,ts_star_date,ts_end_date,
	(ts_end_date - ts_star_date) * h_price as "загальна ціна проживання"
from 
	hotels
left join 
	tours on hotels.h_id_hotels = tours.hotels
left join 
	accommodation_type on accommodation_type.a_id_accommodation_type = hotels.accommodation_type
left join 
	type_of_food on tours.type_of_food = type_of_food.tf_id_type_of_food

where h_name like 'a%' and h_id_hotels = ALL(select tf_id_type_of_food  from type_of_food 
									  where tf_type_of_food  like 'C%');

select *from livingPrice;
-- -----------------------------------------------------------------------------------
create view infoAboutAllTour as
select concat ('Назва авіакомпанії - '  ,f_name,'   ','тип курорту - '  , t_type_of_tour,'   ', 'назва країни - ' ,ct_name ,'   ',
			  'назва міста - '  , ci_name,'   ','ціна туру - '  ,ts_price,'   ','дата початку : ',ts_star_date,'   ','дата кінця : ',ts_end_date,'  ','назва готелю - ' ,h_name,'   ','тип готелю - ' ,
			   h_type,'   ','кількість зірок - ' ,h_number_of_stars,'   ','ціна готелю - ' ,h_price,' доларів') 
			   as "Інформація"
from tours
join type_of_tour on type_of_tour.t_id_type_of_tour = tours.type_of_tour
join hotels on hotels.h_id_hotels = tours.hotels
join city on city.ci_id_city = hotels.city
join country on country.ct_id_country = city.country
join flights on flights.f_id_flights = tours.flights

select * from infoAboutAllTour;
-- -----------------------------------------------------------------------------------









-- -----------------------------------------------------------------------------------







-- -----------------------------------------------------------------------------------




