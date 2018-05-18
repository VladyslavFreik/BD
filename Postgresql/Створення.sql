DROP SCHEMA public CASCADE; 
CREATE SCHEMA public;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO public;

Start Transaction;
Savepoint main;
Savepoint Client1;

CREATE TABLE Client (
  c_id_client Serial,
  c_surname VARCHAR(45) NULL,
  c_name VARCHAR(45) NULL,
  c_middle_name VARCHAR(45) NULL,
  c_Date_of_birth DATE NULL,
  c_address VARCHAR(45) NULL,
  c_phone VARCHAR(45) NULL,
  PRIMARY KEY (c_id_client));
  
  
Savepoint Type_of_tour1;

CREATE TABLE Type_of_tour (
  t_id_type_of_tour Serial,
  t_type_of_tour VARCHAR(45) NOT NULL,
  PRIMARY KEY (t_id_Type_of_tour));


Savepoint Accommodation_type1;

CREATE TABLE Accommodation_type( -- Тип розміщення
  a_id_accommodation_type Serial,
  a_accommodation_type VARCHAR(45) NOT NULL, -- Тип розміщення
  PRIMARY KEY (a_id_accommodation_type));


Savepoint Country1;

CREATE TABLE Country (
  ct_id_country Serial,
  ct_name VARCHAR(45) NULL,
  ct_creed VARCHAR(45) NULL,   -- Віросповідання
  ct_attractions VARCHAR(45) NULL, -- Визначні місця
  ct_forms_of_government VARCHAR(45) NULL,
  ct_political_system VARCHAR(45) NULL,
  PRIMARY KEY (ct_id_country));


Savepoint City1;

CREATE TABLE City (
  ci_id_city Serial,
  ci_name VARCHAR(45) NULL,
  Country INT NOT NULL,
  PRIMARY KEY (ci_id_city),
    FOREIGN KEY (Country)
    REFERENCES Country (ct_id_country)
     ON DELETE CASCADE
    ON UPDATE CASCADE);
    

Savepoint Hotels1;

CREATE TABLE Hotels (
  h_id_hotels Serial,
  h_name VARCHAR(45) NULL,
  h_type VARCHAR(45) Null,
  h_number_of_stars INT NULL,
  h_price decimal NULL,
  Accommodation_type INT NOT NULL,
  City INT NOT NULL,
  PRIMARY KEY (h_id_hotels),
    FOREIGN KEY (Accommodation_type)
    REFERENCES Accommodation_type (a_id_accommodation_type)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    
    FOREIGN KEY (City)
    REFERENCES City (ci_id_city)
    ON DELETE CASCADE
    ON UPDATE CASCADE);


Savepoint Flights1;

CREATE TABLE Flights (
  f_id_flights Serial,
  f_name VARCHAR(45) NULL,
  f_city_of_departure VARCHAR(45) NULL,
  f_date_time_of_departure TIMESTAMP NULL,
  f_city_arrives VARCHAR(45) NULL, -- Місто прильоту
  f_date_time_arrives TIMESTAMP NULL,
  PRIMARY KEY (f_id_flights));


Savepoint Type_of_food1;

CREATE TABLE Type_of_food (
  tf_id_type_of_food Serial,
  tf_type_of_food VARCHAR(45) NULL,
  PRIMARY KEY (tf_id_type_of_food));
  
  
Savepoint Tours1;

CREATE TABLE Tours (
  ts_id_tours Serial,
  ts_star_date DATE NULL,
  ts_end_date DATE NULL,
  ts_price decimal NULL,
  Type_of_tour INT NOT NULL,
  Hotels INT NOT NULL,
  Flights INT NOT NULL,
  Type_of_food INT NOT NULL,
  PRIMARY KEY (ts_id_tours),
	FOREIGN KEY (Type_of_tour)
    REFERENCES Type_of_tour (t_id_type_of_tour)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

   FOREIGN KEY (Hotels)
    REFERENCES Hotels (h_id_hotels)
	ON DELETE CASCADE
    ON UPDATE CASCADE,

    FOREIGN KEY (Flights)
    REFERENCES Flights (f_id_flights)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
 
    FOREIGN KEY (Type_of_food)
    REFERENCES Type_of_food(tf_id_type_of_food)
    ON DELETE CASCADE
    ON UPDATE CASCADE);



Savepoint Sales1;

CREATE TABLE Sales (
  s_id_sales Serial,
  Client INT NOT NULL,
  s_count INT NULL,
  s_date DATE NULL,
  Tours INT NOT NULL,
  PRIMARY KEY (s_id_sales),
 FOREIGN KEY (Client)
    REFERENCES Client(c_id_client)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  
    FOREIGN KEY (Tours)
    REFERENCES Tours(ts_id_tours)
    ON DELETE CASCADE
    ON UPDATE CASCADE);



Savepoint Program1;

CREATE TABLE Program (
  p_id_program Serial,
  p_type VARCHAR(45) NOT NULL,
  p_route VARCHAR(45) NULL,
  p_transport VARCHAR(45) NULL,
  p_price_in_dollars decimal NULL,
  PRIMARY KEY (p_id_program));
  


Savepoint Tour_program1;

CREATE TABLE Tour_program (
  tp_id_tour_program Serial,
  Program INT NOT NULL,
  Tours INT NOT NULL,
  tp_date DATE NULL,
  tp_time TIME NULL,
  PRIMARY KEY (tp_id_tour_program),
    FOREIGN KEY (Program)
    REFERENCES Program(p_id_program)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  
    FOREIGN KEY (Tours)
    REFERENCES Tours (ts_id_tours)
	ON DELETE CASCADE
    ON UPDATE CASCADE);

/* 
 rollback to savepoint Client1;
 rollback to savepoint Type_of_tour1;
 rollback to savepoint Accommodation_type1;
 rollback to savepoint Country1;
 rollback to savepoint City1;
 rollback to savepoint Hotels1;
 rollback to savepoint Flights1;
 rollback to savepoint Type_of_food1;
 rollback to savepoint Tours1;
 rollback to savepoint Sales1;
 rollback to savepoint Program1;
 rollback to savepoint Tour_program1;
 rollback to savepoint main;
*/
commit;
select * from Hotels;

-------------------------------------------------------------------------------------------------