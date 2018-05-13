
Start Transaction;
Savepoint main1;


Savepoint Accommodation_type2;

insert into accommodation_type(a_accommodation_type)
values('Single-SGL');
insert into accommodation_type(a_accommodation_type)
values('Double-DBL');
insert into accommodation_type(a_accommodation_type)
values('Twin-TWN');
insert into accommodation_type(a_accommodation_type)
values('Run of house-R. O.H');



Savepoint Country2;
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government)
values ('Німеччина','Католицизм','Бранденбурзькі ворота','конфедерація ');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government)
values ('Ангіля','Протестанство','aasc','Федеративна ');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government)
values ('Китай','Буддизм','axc','Унітарна');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government)
values ('Іспанія','Католицизм','asd','Федеративна');




Savepoint City2;

insert into city(ci_name,Country)
values ('Берлін',1);
insert into city(ci_name,Country)
values ('Лондон',2);
insert into city(ci_name,Country)
values ('Шанхай',3);
insert into city(ci_name,Country)
values ('Мадрид',4);




Savepoint Flights2;

insert into	flights(f_name,f_city_of_departure,f_date_of_departure,f_time_of_departure,
f_city_arrives,f_date_arrives,f_time_arrives)
values('Aer','asd','2000-12-12','23:59:59','','2000-12-18','23:59:59');
insert into	flights(f_name,f_city_of_departure,f_date_of_departure,f_time_of_departure,
f_city_arrives,f_date_arrives,f_time_arrives)
values('Oer','sdf','2000-12-12','23:59:59','','2000-12-12','23:59:59');
insert into	flights(f_name,f_city_of_departure,f_date_of_departure,f_time_of_departure,
f_city_arrives,f_date_arrives,f_time_arrives)
values('Incop','sdf','2000-12-12','23:59:59','','2000-12-12','23:59:59');
insert into	flights(f_name,f_city_of_departure,f_date_of_departure,f_time_of_departure,
f_city_arrives,f_date_arrives,f_time_arrives)
values('Airline','asd','2000-12-12','23:59:59','','2000-12-12','23:59:59');




Savepoint Type_of_food2;

insert into type_of_food(tf_type_of_food)
values ('Continental Breakfast');
insert into type_of_food(tf_type_of_food)
values ('HсAL ');
insert into type_of_food(tf_type_of_food)
values ('UAL');
insert into type_of_food(tf_type_of_food)
values ('Mini all inclusive');

  


Savepoint Type_of_tour2;

insert into type_of_tour(t_type_of_tour)
values ('Гірськолижні');
insert into type_of_tour(t_type_of_tour)
values ('Захоплюючи тури по Україні');
insert into type_of_tour(t_type_of_tour)
values ('Цікаві індивідуальні тури');
insert into type_of_tour(t_type_of_tour)
values (' Тури вихідного дня');



Savepoint Program2;

insert into program(p_type,p_route,p_transport,p_price_in_dollars)
values ('молодіжна вечірка','з-до','автобус',100);
insert into program(p_type,p_route,p_transport,p_price_in_dollars)
values ('перегляд замків','з-до','потяг',1000);
insert into program(p_type,p_route,p_transport,p_price_in_dollars)
values ('подорожє до моря','з-до','лайнер',2000);
insert into program(p_type,p_price_in_dollars)
values ('масаж', 400);
insert into program(p_type,p_route,p_transport,p_price_in_dollars)
values ('Екстремальний туризм','з-до','автобус',400);
insert into program(p_type,p_route,p_transport,p_price_in_dollars)
values ('Екскурсійний тур','з-до','потяг',300);
insert into program(p_type,p_route,p_transport,p_price_in_dollars)
values ('Круїз','з-до','лайнер',1000);

  



Savepoint Hotels2;

insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('asd','Balcony',5,1000,1,1);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('sdf','Apartment',4,500,2,2);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('fgh','President',2,200,3,3);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('asd','Superior',3,250,4,4);





Savepoint Client2;

insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('asd','asd','qwe','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('asds','fda','dsa','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('zxc','dfg','qwea','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('dfg','ghj','zxcbv','2000-12-12','','');
  



Savepoint Tours2;

insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2000-12-12','2000-12-12',200,1,1,1,1);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2000-12-12','2000-12-12',400,2,2,2,2);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2000-12-12','2000-12-12',600,3,3,3,3);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2000-12-12','2000-12-12',1000,4,4,4,4);



Savepoint Sales2;

insert into sales(Client,s_count,s_date,Tours)
values (1, 12, '2000-12-12', 1);
insert into sales(Client,s_count,s_date,Tours)
values (2, 15, '2000-12-12', 2);
insert into sales(Client,s_count,s_date,Tours)
values (3, 9, '2000-12-12', 3);
insert into sales(Client,s_count,s_date,Tours)
values (4, 234, '2000-12-12', 4);




Savepoint Tour_program2;

insert into tour_program(Program,Tours,tp_date,tp_time)
values (1,1,'2000-12-12','12:12:32');
insert into tour_program(Program,Tours,tp_date)
values (2,2,'2000-12-12');
insert into tour_program(Program,Tours,tp_date)
values (3,3,'2000-12-12');
insert into tour_program(Program,Tours,tp_date)
values (4,4,'2000-12-12');


-- rollback to savepoint Accommodation_type2
-- rollback to savepoint Country2    
-- rollback to savepoint City2
-- rollback to savepoint Flights2;
-- rollback to savepoint Type_of_food2
-- rollback to savepoint Type_of_tour2;
-- rollback to savepoint Program2
-- rollback to savepoint Hotels2;
-- rollback to savepoint Client2
-- rollback to savepoint Tours2
-- rollback to savepoint Sales2
-- rollback to savepoint Tour_program2
-- rollback to savepoint main1


commit;
select * from Tour_program;

-------------------------------------------------------------------------------------------------