Use travelagencies;

/* Тип розміщення
Single-SGL – одномісне розміщення

Double-DBL – двомісне розміщення з одним двоспальним ліжком

Twin-TWN – двомісне розміщення з двома односпальними ліжками

DBL + EX. BED (extra bed) – двомісне розміщення з одним двоспальним ліжком і
 додатковим ліжком. Додаткове ліжко може бути як повноцінної ліжком, так і 
 розкладним диваном, розкладачкою і навіть матрацом, кинутим на підлогу.


Triple-TRPL – тримісне розміщення. У номері дві основні ліжка, а третя може бути 
стаціонарною або розкладним диваном. У номері TRPL розміщуються, як правило, троє
 дорослих людей, а в номері DBL + EX. BED – дорослі з дитиною.
 
Run of house-R. O.H. – Розміщення пропонується готелем по прибуттю на її розсуд.
 Ціна номера низька, але працює як система фортуна – що попадеться.
*/
insert into accommodation_type(a_accommodation_type)
values('Single-SGL');
insert into accommodation_type(a_accommodation_type)
values('Double-DBL');
insert into accommodation_type(a_accommodation_type)
values('Twin-TWN');
insert into accommodation_type(a_accommodation_type)
values('Run of house-R. O.H');

-- Країна
insert into country(ct_name,ct_creed,ct_attractions)
values ('Німеччина','Католицизм','Бранденбурзькі ворота');
insert into country(ct_name,ct_creed,ct_attractions)
values ('Ангіля','Протестанство','aasc');
insert into country(ct_name,ct_creed,ct_attractions)
values ('Китай','Буддизм','axc');
insert into country(ct_name,ct_creed,ct_attractions)
values ('Іспанія','Католицизм','asd');

-- Місто
insert into city(ci_name,Country)
values ('Берлін',1);
insert into city(ci_name,Country)
values ('Лондон',2);
insert into city(ci_name,Country)
values ('Шанхай',3);
insert into city(ci_name,Country)
values ('Мадрид',4);



-- Рейси
insert into	flights(f_city_of_departure,f_date_of_departure,f_time_of_departure,
f_city_arrives,f_date_arrives,f_time_arrives)
values('asd','2000-12-12','23:59:59','','2000-12-12','23:59:59');
insert into	flights(f_city_of_departure,f_date_of_departure,f_time_of_departure,
f_city_arrives,f_date_arrives,f_time_arrives)
values('sdf','2000-12-12','23:59:59','','2000-12-12','23:59:59');
insert into	flights(f_city_of_departure,f_date_of_departure,f_time_of_departure,
f_city_arrives,f_date_arrives,f_time_arrives)
values('sdf','2000-12-12','23:59:59','','2000-12-12','23:59:59');
insert into	flights(f_city_of_departure,f_date_of_departure,f_time_of_departure,
f_city_arrives,f_date_arrives,f_time_arrives)
values('asd','2000-12-12','23:59:59','','2000-12-12','23:59:59');

-- тип харчування
/*ОВ (only bed), — без харчування;

RO (room only), — без харчування;

«A-la carte» — меню, в якому кожне блюдо вказане з ціною;

BB (bed & breakfast) — у вартість проживання включений тільки сніданок (шведський стіл). Додаткове харчування — за окрему плату в ресторанах і барах готелю;

HB (half board) — напівпансіон — у вартість проживання включено сніданок і вечеря (шведський стіл), безкоштовний чай, кава, вода на сніданок;

HB + (half board +, extended half board) — розширений напівпансіон — сніданок і вечеря (шведський стіл), а також безалкогольні напої місцевого виробництва весь день;

FB (full board) — повний пансіон — сніданок, обід і вечеря (шведський стіл);

FB +, ExtFB (full board +, extended half board) — розширений повний пансіон — сніданок, обід і вечеря (шведський стіл), а також напої під час прийому їжі;

Brunch dinner + — тип харчування, поширений на гірськолижних курортах, сніданок перетікає в ранній обід (без перерви між ними) і вечерю, а також алкогольні 
(вино і пиво) і безакогольние напої місцевого виробництва

Mini all inclusive — повний пансіон з напоями місцевого виробництва не тільки під час їжі, але в обмеженій кількості;

ALL, AI (все включено) — все включено — сніданок, обід і вечеря (шведський стіл). Протягом дня пропонуються напої (місцевого виробництва — алкогольні та 
безалкогольні) в необмеженій кількості плюс додаткове харчування (можуть пропонуватися: другий сніданок, полуденок, пізня вечеря, легкі закуски, барбекю
 в барах готелю і т.п.);
 
HсAL (hign class all inclusive) — все безкоштовно, крім магазинів, телефону, лікаря, перукарні, деяких водних видів спорту і підводного плавання;

UAL, UAI (ultra all inclusive) — ультра все включено — сніданок, пізній сніданок, обід, полуденок і вечеря (шведський стіл). Гідний вибір солодощів, десертів,
 усіляких закусок, а також широкий вибір напоїв місцевого та імпортного виробництва. Більшість готелів, що працюють за системою Ultra All Inclusive, пропонують
 гостям додаткове безкоштовне харчування в ресторанах з кухнею різних народів світу. Харчування протягом дня, включаючи напої імпортного виробництва 
 (у тому числі спиртні);

Continental Breakfast, Континентальний сніданок — легкий сніданок, що складається з кави або чаю, соку, булочки, масла і джему;

Англійський сніданок — повний сніданок, включає сік, яєчню, тости, масло, джем і каву (чай);

Американський сніданок — аналогічний континентальному сніданку, включає різні нарізки і гарячі страви.
*/
insert into type_of_food(tf_type_of_food)
values ('Continental Breakfast');
insert into type_of_food(tf_type_of_food)
values ('HсAL ');
insert into type_of_food(tf_type_of_food)
values ('UAL');
insert into type_of_food(tf_type_of_food)
values ('Mini all inclusive');

-- Тип турів
/*
 Екскурсійний тур від турагенції «SofiaTours» – це маленька подорож, що дає 
 можливість не тільки відпочити, а й отримати нові знання і свіжі враження

 Весільна подорож вважається невід’ємним атрибутом кожного весілля.

 Екстремальний туризм захоплює багатьох, причому більшість екстремалів
 готові податися на інший кінець світу в пошуках нових вражень
 
 Гастрономічний тур – це подорож в гастрономічний регіон з метою відпочинку і 
 розваги з включенням відвідування як основних, так і вторинних виробників 
 продуктів харчування, фермерських ринків, кулінарних шоу, майстер-класів. 
 Тут турист знайомиться з країною через її кухню.
 
 Тури вихідного дня – це шанс змінити щось навколо себе та дійсно відпочити 
 після довгого та насиченого робочого тижня. 
 Ненадовго вийти з звичного ритму життя та відчути себе зовсім іншим.
 
 Цікаві індивідуальні тури
 За нашими спостереженнями індивідуальні тури с кожним роком набувають популярності.
 І це цілком зрозуміло. Ви маєте можливість відпочити в найбільш цікавих для 
 Вас місцях земної кулі. А якщо час і гроші дозволяють
 відвідати відразу кілька місць – це, без сумнівів, захоплюючий відпочинок.

 Захоплюючи тури по Україні - наша Батьківщина неймовірно багата на красиві,
 мальовничі місця. В Україні є
 також безліч історичних пам’яток, бо нашій історії вже тисячі років
 
 Круїз - подорож на лайнері
 
 Гірськолижний курорт
 Відпочинок на гірськолижних курортах користується попитом серед любителів 
 активного проводження часу.
*/

insert into type_of_tour(t_type_of_tour)
values ('Гірськолижні');
insert into type_of_tour(t_type_of_tour)
values ('Захоплюючи тури по Україні');
insert into type_of_tour(t_type_of_tour)
values ('Цікаві індивідуальні тури');
insert into type_of_tour(t_type_of_tour)
values (' Тури вихідного дня');

-- Програма
insert into program(p_type,p_route,p_transport,p_price_in_dollars)
values ('молодіжна вечірка','з-до','автобус',100);
insert into program(p_type,p_route,p_transport,p_price_in_dollars)
values ('перегляд замків','з-до','потяг',1000);
insert into program(p_type,p_route,p_transport,p_price_in_dollars)
values ('подорожє до моря','з-до','лайнер',2000);
insert into program(p_type,p_price_in_dollars)
values ('масажі',50);


-- Готелі
/*Apartment – апартаменти, аналог квартири, що складається з кількох кімнат і кухні;
Balcony – з балконом;
BDR, BDRM (bedroom) – зі спальнею;
Business – види номерів в готелі з великою площею, комп'ютером, факсом, призначені для роботи;
Connected rooms – суміжні кімнати, які мають між собою двері;
De luxe – двомісний однокімнатний номер великого розміру з більш дорогою обстановкою мінімум з двох кімнат;
Duplex – великий двоповерховий номер;
Extra bed (або king size) – з великим двоспальним ліжком;
Family room – сімейна кімната (більше стандартної);
Family studio – сімейний, складається з двох кімнат;
Honeymoon room – типи кімнат у готелях, які призначені для молодят;
President – найшикарніші типи номерів у готелі, що складаються з декількох спальних кімнат, вітальні, кабінету, з декількома ванними кімнатами та туалетами;
STD (standart) – стандартна кімната;
Studio – студія (однокімнатний номер з кухнею);
Suite – номер, що складається з вітальні та спальні;
Suite mini (junior) – покращений;
Superior – покращений (більшого розміру, ніж стандартний).
*/
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('asd','Balcony',5,1000,1,1);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('sdf','Apartment',4,500,2,2);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('fgh','President',2,200,3,3);
insert into hotels(h_name,h_type,h_number_of_stars,h_price,Accommodation_type,City)
values ('asd','Superior',3,250,4,4);

-- Клієнти
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('asd','asd','qwe','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('asds','fda','dsa','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('zxc','dfg','qwea','2000-12-12','','');
insert into	client(c_surname,c_name,c_middle_name,c_Date_of_birth,c_address,c_phone)
values('dfg','ghj','zxcbv','2000-12-12','','');

-- Тури
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

-- Продажі
insert into sales(Client,s_count,s_date,Tours)
values (1, 12, '2000-12-12', 1);
insert into sales(Client,s_count,s_date,Tours)
values (2, 15, '2000-12-12', 2);
insert into sales(Client,s_count,s_date,Tours)
values (3, 12, '2000-12-12', 3);
insert into sales(Client,s_count,s_date,Tours)
values (4, 12, '2000-12-12', 4);


-- програма туру'
insert into tour_program(Program,Tours,tp_date,tp_time)
values (1,1,'2000-12-12','12:12:32');
insert into tour_program(Program,Tours,tp_date)
values (2,2,'2000-12-12');
insert into tour_program(Program,Tours,tp_date)
values (3,3,'2000-12-12');
insert into tour_program(Program,Tours,tp_date)
values (4,4,'2000-12-12');
