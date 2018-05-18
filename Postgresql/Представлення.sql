-- -----------------------------------------------------------------------------------
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
select c_id_client,concat (c_surname,' ',c_name )  as "Прізвище та ім`я", age( c_date_of_birth) as "Вік", s_count * ts_price as "Загальна вартість",
case 
when age( c_date_of_birth)  < age(current_date - 6574)  then 'Неповнолітнім особам продаж білетів не дозволена'
when age( c_date_of_birth) >age(current_date - 6574) then 'Особа повнолітня дозвіл на купівлю білетів'
end
from 
	client
Join 
	Sales on c_id_client = s_id_sales
Join 
	tours on c_id_client = ts_id_tours
order by age( c_date_of_birth) desc
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
create view statusProgram  as 
select p_id_program,p_type,p_price_in_dollars,tp_date,tp_time,
case 
when tp_date < current_date then 'подія відбулася' 
when tp_date =  current_date and tp_time between current_time and current_time  + interval '30 minutes' then 'подія починається або почалась недавно'
when tp_date =  current_date and tp_time < current_time then 'подія закінчилася недавно або відбувається в даний момент'
when tp_date between current_date and current_date + interval '1 day'  then 'подія відбудеться ближнім часом'
when tp_date > current_date  then 'подія відбудеться пізніше'
end
as
"Статус події"
from program 
right join tour_program on tour_program.program = program.p_id_program
right join tours on tours.ts_id_tours = tour_program.tours
where tp_date is not null;

select * from statusProgram;
-- -----------------------------------------------------------------------------------