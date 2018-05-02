DROP DATABASE IF EXISTS TravelAgencies;
CREATE DATABASE TravelAgencies;
USE TravelAgencies;
-- -----------------------------------------------------
CREATE TABLE Client (
  c_id_client INT NOT NULL AUTO_INCREMENT,
  c_surname VARCHAR(45) NULL,
  c_name VARCHAR(45) NULL,
  c_middle_name VARCHAR(45) NULL,
  c_Date_of_birth DATE NULL,
  c_address VARCHAR(45) NULL,
  c_phone VARCHAR(45) NULL,
  PRIMARY KEY (c_id_client));
-- -----------------------------------------------------
CREATE TABLE Type_of_tour (
  t_id_type_of_tour INT NOT NULL AUTO_INCREMENT,
  t_type_of_tour VARCHAR(45) NOT NULL,
  PRIMARY KEY (t_id_Type_of_tour));
-- -----------------------------------------------------
CREATE TABLE Accommodation_type( -- Тип розміщення
  a_id_accommodation_type INT NOT NULL AUTO_INCREMENT,
  a_accommodation_type VARCHAR(45) NOT NULL, -- Тип розміщення
  PRIMARY KEY (a_id_accommodation_type));
-- -----------------------------------------------------
CREATE TABLE Country (
  ct_id_country INT NOT NULL AUTO_INCREMENT,
  ct_name VARCHAR(45) NULL,
  ct_creed VARCHAR(45) NULL,   -- Віросповідання
  ct_attractions VARCHAR(45) NULL, -- Визначні місця
  PRIMARY KEY (ct_id_country));
-- -----------------------------------------------------
CREATE TABLE City (
  ci_id_city INT NOT NULL AUTO_INCREMENT,
  ci_name VARCHAR(45) NULL,
  Country INT NOT NULL,
  PRIMARY KEY (ci_id_city),
    FOREIGN KEY (Country)
    REFERENCES Country (ct_id_country)
     ON DELETE CASCADE
    ON UPDATE CASCADE);
-- -----------------------------------------------------
CREATE TABLE Hotels (
  h_id_hotels INT NOT NULL AUTO_INCREMENT,
  h_name VARCHAR(45) NULL,
  h_number_of_stars INT NULL,
  h_price INT NULL,
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
-- -----------------------------------------------------
CREATE TABLE Flights (
  f_id_flights INT NOT NULL AUTO_INCREMENT,
  f_city_of_departure VARCHAR(45) NULL,
  f_date_of_departure DATE NULL,
  f_time_of_departure TIME NULL,
  f_city_arrives VARCHAR(45) NULL, -- Місто прильоту
  f_date_arrives DATE NULL,
  f_time_arrives TIME NULL,
  PRIMARY KEY (f_id_flights));
-- -----------------------------------------------------
CREATE TABLE Type_of_food (
  tf_id_type_of_food INT NOT NULL AUTO_INCREMENT,
  tf_type_of_food VARCHAR(45) NULL,
  PRIMARY KEY (tf_id_type_of_food));
-- -----------------------------------------------------
CREATE TABLE Tours (
  ts_id_tours INT NOT NULL AUTO_INCREMENT,
  ts_star_date DATE NULL,
  ts_end_date DATE NULL,
  ts_price INT NULL,
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
-- -----------------------------------------------------
CREATE TABLE Sales (
  s_id_sales INT NOT NULL AUTO_INCREMENT,
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

-- -----------------------------------------------------
CREATE TABLE Program (
  p_id_program INT NOT NULL AUTO_INCREMENT,
  p_route VARCHAR(45) NULL,
  p_transport VARCHAR(45) NULL,
  p_price_in_dollars INT NULL,
  PRIMARY KEY (p_id_program));
-- -----------------------------------------------------
CREATE TABLE Tour_program (
  tp_id_tour_program INT NOT NULL AUTO_INCREMENT,
  Program INT NOT NULL,
  Tours INT NOT NULL,
  tp_date DATE NULL,
  PRIMARY KEY (tp_id_tour_program),
    FOREIGN KEY (Program)
    REFERENCES Program(p_id_program)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  
    FOREIGN KEY (Tours)
    REFERENCES Tours (ts_id_tours)
	ON DELETE CASCADE
    ON UPDATE CASCADE);
