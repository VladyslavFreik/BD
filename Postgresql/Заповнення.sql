
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
insert into accommodation_type(a_accommodation_type)
values('Single-SGL');
insert into accommodation_type(a_accommodation_type)
values('Double-DBL');
insert into accommodation_type(a_accommodation_type)
values('Twin-TWN');
insert into accommodation_type(a_accommodation_type)
values('Run of house-R. O.H');
insert into accommodation_type(a_accommodation_type)
values('Double-DBL');
insert into accommodation_type(a_accommodation_type)
values('Twin-TWN');
insert into accommodation_type(a_accommodation_type)
values('Run of house-R. O.H');
insert into accommodation_type(a_accommodation_type)
values('Single-SGL');
insert into accommodation_type(a_accommodation_type)
values('Double-DBL');
insert into accommodation_type(a_accommodation_type)
values('Twin-TWN');
insert into accommodation_type(a_accommodation_type)
values('Run of house-R. O.H');



Savepoint Country2;
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system)
values ('Німеччина','Католицизм','Бранденбурзькі ворота','Представницька демократія','Федеративна');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system)
values ('Ангіля','Христианство','Біг Бен','Конституційна монархія','Парламентаризм');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system)
values ('Китай','Ислам','Велика китайська стіна','Унітарна','Соціалістична країна');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system)
values ('Іспанія','Христианство','Сasa mila la pedrera','Монархія','Унітарна');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system)
values ('Кариби','Католицизм','Баваро','Республіка','Соціалістична країна');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system)
values ('Канари','Католицизм','Острів Тенеріфе','Монархія ','Унітарна');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system)
values ('Франція','Католицизм','Ейфелева вежа','Конституційна республіка','Унітарна');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system)
values ('Бразилія','Христианство','Статуя Христа Спасителя','Президентська республіка','Федеративна');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system)
values ('Данія','Лютеранство.','Замок Фредеріксборг','Монархія','Унітарна');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system)
values ('Норвегія','Христианство','Полярне сяйво','Монархія','Унітарна');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system)
values ('Непал','Індуїзм','Анапурна','Республіка','Парламентаризм');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system)
values ('Україна','Христианство','Хотинський замок','Республіка ','Унітарна');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system)
values ('США','Протестанство','Статуя Свободи','Ліберальна демократія ','Конституційна республіка');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system)
values ('Канада','Христианство','Манітоба','Конституційна монархія','Парламентаризм');
insert into country(ct_name,ct_creed,ct_attractions,ct_forms_of_government,ct_political_system)
values ('ОАЕ','Мусульманство','Бурдж-Халіфа','Монархія','Федеративна');





Savepoint City2;

insert into city(ci_name,Country)
values ('Берлін',1);
insert into city(ci_name,Country)
values ('Лондон',2);
insert into city(ci_name,Country)
values ('Шанхай',3);
insert into city(ci_name,Country)
values ('Мадрид',4);
insert into city(ci_name,Country)
values ('Каракас',5);
insert into city(ci_name,Country)
values ('Лас-Пальмас-де-Гран-Канарія ',6);
insert into city(ci_name,Country)
values ('Париж',7);
insert into city(ci_name,Country)
values ('Ріо де жанейро',8);
insert into city(ci_name,Country)
values ('Копенгаген',9);
insert into city(ci_name,Country)
values ('Осло',10);
insert into city(ci_name,Country)
values ('Катманду',11);
insert into city(ci_name,Country)
values ('Київ',12);
insert into city(ci_name,Country)
values ('Нью-Йорк',13);
insert into city(ci_name,Country)
values ('Оттава',14);
insert into city(ci_name,Country)
values ('Дубаї',15);








Savepoint Type_of_food2;

insert into type_of_food(tf_type_of_food)
values ('Continental Breakfast');
insert into type_of_food(tf_type_of_food)
values ('HсAL ');
insert into type_of_food(tf_type_of_food)
values ('UAL');
insert into type_of_food(tf_type_of_food)
values ('Mini all inclusive');
insert into type_of_food(tf_type_of_food)
values ('Continental Breakfast');
insert into type_of_food(tf_type_of_food)
values ('HсAL ');
insert into type_of_food(tf_type_of_food)
values ('UAL');
insert into type_of_food(tf_type_of_food)
values ('Mini all inclusive');
insert into type_of_food(tf_type_of_food)
values ('Continental Breakfast');
insert into type_of_food(tf_type_of_food)
values ('HсAL ');
insert into type_of_food(tf_type_of_food)
values ('UAL');
insert into type_of_food(tf_type_of_food)
values ('Mini all inclusive');
insert into type_of_food(tf_type_of_food)
values ('Continental Breakfast');
insert into type_of_food(tf_type_of_food)
values ('HсAL ');
insert into type_of_food(tf_type_of_food)
values ('UAL');

  


Savepoint Type_of_tour2;

insert into type_of_tour(t_type_of_tour)
values ('Екскурсійний');
insert into type_of_tour(t_type_of_tour)
values ('Гастро тур');
insert into type_of_tour(t_type_of_tour)
values ('Екскурсійний');
insert into type_of_tour(t_type_of_tour)
values ('Круїз');
insert into type_of_tour(t_type_of_tour)
values ('Круїз');
insert into type_of_tour(t_type_of_tour)
values ('Тури вихідного дня');
insert into type_of_tour(t_type_of_tour)
values ('Екстримальні тури');
insert into type_of_tour(t_type_of_tour)
values (' Тури вихідного дня');
insert into type_of_tour(t_type_of_tour)
values ('Гірськолижні');
insert into type_of_tour(t_type_of_tour)
values ('Гірськолижні');
insert into type_of_tour(t_type_of_tour)
values ('Захоплюючи тури по Україні');
insert into type_of_tour(t_type_of_tour)
values ('Гастро тур');
insert into type_of_tour(t_type_of_tour)
values ('Гастро тур');
insert into type_of_tour(t_type_of_tour)
values ('Цікаві індивідуальні тури');
insert into type_of_tour(t_type_of_tour)
values ('Захоплюючи тури по Україні');
insert into type_of_tour(t_type_of_tour)
values ('Гастро тур');
insert into type_of_tour(t_type_of_tour)
values ('Гастро тур');
insert into type_of_tour(t_type_of_tour)
values ('Цікаві індивідуальні тури');



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
insert into program(p_type,p_route,p_transport,p_price_in_dollars)
values ('Круїз','з-до','лайнер',1000);
  



Savepoint Hotels2;

insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('Hotel President Wilson','Balcony',5,9999,1,1);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('Grand Resort Lagonissi','Apartment',5,5500,2,2);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('Raj Palace','President',5,3220,3,3);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('Grand Hyatt Martinez','Superior',5,2250,4,4);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('Four Seasons Hotel','Balcony',5,1500,5,5);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('Palms Casino Resort','Apartment',4,840,6,6);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('Laucala Island Resort','President',5,2200,7,7);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('Plaza Hotel','Superior',5,1250,8,8);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('Ritz-Carlton','Balcony',5,1000,9,9);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('Бурдж аль-Араб','Apartment',4,500,10,10);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('Ritz-Carlton','President',3,350,11,11);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('Giraffe Manor','Superior',1,150,12,12);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('Eden Motel','Balcony',5,1000,13,13);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('Naumi Hotel','Apartment',4,560,14,14);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('Residenza d`Arte','President',2,200,15,15);





Savepoint Client2;

insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('asd','asd','qwe','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('asds','fda','dsa','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('zxc','dfg','qwea','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('dfg','ghj','zxcbv','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('asd','asd','qwe','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('asds','fda','dsa','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('zxc','dfg','qwea','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('dfg','ghj','zxcbv','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('asd','asd','qwe','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('asds','fda','dsa','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('zxc','dfg','qwea','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('dfg','ghj','zxcbv','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('asd','asd','qwe','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('asds','fda','dsa','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('zxc','dfg','qwea','2000-12-12','','');
  


Savepoint Flights2;

insert into	flights(f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,f_date_time_arrives)
values('Airline','Київ','2018-06-12 23:59:59','Берлін','2018-06-14 18:35:00');
insert into	flights(f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,f_date_time_arrives)
values('Wizz Air','Житомир','2018-05-23 14:00:00','Катманду','2018-05-24 14:00:00');
insert into	flights(f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,f_date_time_arrives)
values('Flydubai','Львів','2018-05-23 17:00:00','Дубаї','2018-05-23 18:00:00');
insert into	flights(f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,f_date_time_arrives)
values('Airline','Івано_Франківськ','2018-05-23 11:00:00','Дубаї','2018-05-23 14:00:00');
insert into	flights(f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,f_date_time_arrives)
values('LOT','Харків','2018-06-12 12:59:59','Дубаї','2018-06-13 13:59:59');
insert into	flights(f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,f_date_time_arrives)
values('UM Air','Луцьк','2018-05-23 13:00:00','Копенгаген','2018-05-24 14:00:00');
insert into	flights(f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,f_date_time_arrives)
values('Pegasus Airlines','Запоріжжя','2018-05-23 14:00:00','Каракас','2018-05-23 23:25:12');
insert into	flights(f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,f_date_time_arrives)
values('Airline','Волинь','2018-06-23 21:30:00','Ріо де жанейро','2018-06-24 17:00:00');
insert into	flights(f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,f_date_time_arrives)
values('Yanair','Дніпропетровськ','2018-06-12 22:59:59','Лондон','2018-06-13 23:59:59');
insert into	flights(f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,f_date_time_arrives)  
values('Belavia ','Житомир','2018-05-23 20:00:00','Шанхай','2018-05-23 14:00:00');
insert into	flights(f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,f_date_time_arrives)
values('Flydubai','Донецьк','2018-04-23 18:00:00','Мадрид','2018-04-25 14:00:00');
insert into	flights(f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,f_date_time_arrives)
values('Airline','Волинь','2018-06-23 21:30:00','Ріо де жанейро','2018-06-24 17:00:00');
insert into	flights(f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,f_date_time_arrives)
values('Yanair','Дніпропетровськ','2018-06-12 22:59:59','Лондон','2018-06-13 23:59:59');
insert into	flights(f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,f_date_time_arrives)  
values('Belavia ','Луцьк','2018-05-23 20:00:00','Шанхай','2018-05-23 14:00:00');
insert into	flights(f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,f_date_time_arrives)
values('Flydubai','Львів','2018-04-23 18:00:00','Берлін','2018-04-25 14:00:00');




Savepoint Tours2;

insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2018-06-14','2018-06-24',2000,1,1,1,1);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2018-05-24','2018-06-14',400,2,2,2,2);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2018-05-23','2018-05-30',600,3,3,3,3);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2018-06-13','2018-07-13',1000,4,4,4,4);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2018-05-24','2018-06-01',200,5,5,5,5);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2018-05-23','2018-05-25',550,6,6,6,6);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2018-04-25','2018-05-02',650,7,7,7,7);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2018-06-24','2018-07-02',1250,8,8,8,8);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2018-06-13','2018-06-23',250,9,9,9,9);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2018-05-23','2018-05-25',150,10,10,10,10);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2018-04-25','2018-04-30',650,11,11,11,11);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2018-06-24','2018-07-02',1200,12,12,12,12);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2018-06-13','2018-06-30',250,13,13,13,13);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2018-05-23','2018-05-30',420,14,14,14,14);
insert into tours(ts_star_date,ts_end_date,ts_price,Type_of_tour,Hotels,Flights,
Type_of_food)
values ('2018-04-25','2018-05-05',640,15,15,15,15);


Savepoint Sales2;

insert into sales(Client,s_count,s_date,Tours)
values (1, 12, '2018-06-14', 1);
insert into sales(Client,s_count,s_date,Tours)
values (2, 4, '2018-05-24', 2);
insert into sales(Client,s_count,s_date,Tours)
values (3, 8, '2018-05-23', 3);
insert into sales(Client,s_count,s_date,Tours)
values (4, 6, '2018-06-13', 4);
insert into sales(Client,s_count,s_date,Tours)
values (5, 2, '2018-05-24', 5);
insert into sales(Client,s_count,s_date,Tours)
values (6, 3, '2018-05-23', 6);
insert into sales(Client,s_count,s_date,Tours)
values (7, 9, '2018-04-25', 7);
insert into sales(Client,s_count,s_date,Tours)
values (8, 234, '2018-06-24', 8);
insert into sales(Client,s_count,s_date,Tours)
values (9, 12, '2018-06-13', 9);
insert into sales(Client,s_count,s_date,Tours)
values (10, 15, '2018-05-23', 10);
insert into sales(Client,s_count,s_date,Tours)
values (11, 4, '2018-04-25',11);
insert into sales(Client,s_count,s_date,Tours)
values (12,3, '2018-06-24',12);
insert into sales(Client,s_count,s_date,Tours)
values (13, 5, '2018-06-13',13);
insert into sales(Client,s_count,s_date,Tours)
values (14, 7, '2018-05-23',14);
insert into sales(Client,s_count,s_date,Tours)
values (15, 8, '2018-04-25',15);





Savepoint Tour_program2;

insert into tour_program(Program,Tours,tp_date,tp_time)
values (1,1,'2018-06-24','12:12:32');
insert into tour_program(Program,Tours,tp_date)
values (2,2,'2018-06-14');
insert into tour_program(Program,Tours,tp_date)
values (3,3,'2018-05-30');
insert into tour_program(Program,Tours,tp_date)
values (4,4,'2018-07-13');
insert into tour_program(Program,Tours,tp_date,tp_time)
values (5,5,'2018-06-01','12:12:32');
insert into tour_program(Program,Tours,tp_date)
values (6,6,'2018-05-25');
insert into tour_program(Program,Tours,tp_date)
values (7,7,'2018-05-02');
insert into tour_program(Program,Tours,tp_date)
values (8,8,'2018-07-02');
insert into tour_program(Program,Tours,tp_date,tp_time)
values (9,9,'2018-06-23','12:12:32');
insert into tour_program(Program,Tours,tp_date)
values (10,10,'2018-05-25');
insert into tour_program(Program,Tours,tp_date)
values (11,11,'2018-04-30');
insert into tour_program(Program,Tours,tp_date)
values (12,12,'2018-07-02');
insert into tour_program(Program,Tours,tp_date)
values (13,13,'2018-06-30');
insert into tour_program(Program,Tours,tp_date)
values (14,14,'2018-05-30');
insert into tour_program(Program,Tours,tp_date)
values (15,15,'2018-05-05');



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