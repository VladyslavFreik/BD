DROP SCHEMA public CASCADE; 
CREATE SCHEMA public;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO public;

Start Transaction;
Savepoint main;
savepoint updateTableProgram;
update program set p_route = 'немає',p_transport = 'немає'
where p_route is null or p_transport is null;
select * from program;

savepoint deleteFromFlights;

DELETE FROM flights 
  WHERE f_date_time_of_departure  < current_date;
select * from flights;

savepoint insertInto;

CREATE FUNCTION inputInFlights() RETURNS VOID  AS $$
DECLARE
	i INT ;
	b INT;
BEGIN
	i = 1;
	b = (select 10 - count(f_id_flights) from flights );
               
while i <= b
loop
		insert into	flights(f_name,f_city_of_departure,f_date_time_of_departure,f_city_arrives,f_date_time_arrives)
values (('[0:9]={Silk Way Airlines,Emirates Airline,Air VIA,AirBaltic,UMAir,Travel Service,Finnair,Air China ,Hainan Airlines ,Air Koryo}'::text[])[trunc(random()*10)]	, 
		('[0:9]={Київ,Львів,Харків,Івано-Франківськ,Варшава,Вроцлав,Прага,Лісабон,Каталонія,Крим}'::text[])[trunc(random()*10)],
		timestamptz '2018-05-23  00:00:01' + random() * (timestamptz '2018-05-23 00:00:01' - timestamptz '2018-05-25 03:14:07') ,
		('[0:9]={Мадрид,Париж,Карибські острови,Нью-Йорк,Шанхай,Токіо,Санта-Крус-де-Тенерифе,Берлін,Рим,Ріо де жанейро}'::text[])[trunc(random()*10)],
		 timestamptz '2018-05-25 00:00:01' + random() * (timestamptz '2018-05-25 00:00:01' - timestamptz '2018-05-27 03:14:07')) ;
		 i = i + 1;
	END LOOP;
END;
$$ LANGUAGE plpgsql;
  
 
select * from inputInFlights();
ALTER SEQUENCE flights_f_id_flights_seq RESTART WITH 1;
select * from flights;


rollback to savepoint updateTableProgram;
rollback to savepoint deleteFromFlights;
rollback to savepoint insertInto
-- commit;
-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Start Transaction;

Savepoint deleteField;
DELETE FROM tour_program 
  WHERE tp_id_tour_program = 4 or tp_id_tour_program = 7 or tp_id_tour_program = 9 or tp_id_tour_program = 2  ;

Savepoint insertField;

INSERT INTO tour_program 
(tp_id_tour_program,Program,Tours,tp_date, tp_time)
SELECT
     unnest(array[4, 2]),unnest(array[4, 2]),unnest(array[4, 2]), current_date - interval '1 days',  '14:30:00';
-- unnest розгортає масив в набір рядків

Savepoint updateField;
WITH 
updated AS (
       UPDATE tour_program 
	SET tp_date = current_date + interval '1 days'
	WHERE  tp_date < current_date  
        RETURNING tp_id_tour_program
)


SELECT tp_id_tour_program 
FROM updated;

-- ALTER SEQUENCE tour_program_tp_id_tour_program_seq RESTART WITH 1;

select * from tour_program
order by tp_id_tour_program  


rollback to savepoint deleteField;
rollback to savepoint insertField;
rollback to savepoint updateField
-- commit;
-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------











-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------