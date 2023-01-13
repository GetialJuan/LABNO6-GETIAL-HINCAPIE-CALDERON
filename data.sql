-- (Insertar) Datos en la DB

-- Datos de la tabla subcontractor
INSERT INTO subcontractor (s_lname,s_fname,salary)
VALUES
  ('Colon','Magee',3159666),
  ('Mayer','Hasad',2974530),
  ('Mcmillan','Darryl',2971228),
  ('Whitaker','Raya',3132498),
  ('Dudley','Germaine',3141975),
  ('Barron','Zia',2952784),
  ('Clarke','Jeanette',2859911),
  ('Bond','Hoyt',3187076),
  ('Norman','Giacomo',2910430),
  ('Cantrell','Tanisha',3190371),
  ('Whitaker','Cecilia',2881445),
  ('Terrell','Renee',3013843),
  ('Pena','Unity',2996567),
  ('Nolan','Fletcher',2963763),
  ('Sykes','Colt',2877839);

-- Datos de la tabla builder
INSERT INTO builder (b_lname,b_fname,license)
VALUES
  ('Nelson','Claire','7842432-K'),
  ('Sexton','Shana','223458-0'),
  ('Jarvis','Shay','25316217-1'),
  ('Turner','Marshall','1166098-3'),
  ('Hampton','Magee','8476477-9'),
  ('Jones','Castor','44468841-6'),
  ('Barnett','Urielle','409327-5'),
  ('Barr','Harper','9114916-8'),
  ('Taylor','Tucker','19945693-8'),
  ('Chang','Joel','26680148-3'),
  ('Rosales','Laura','26196743-K'),
  ('Palmer','Quemby','9268809-7'),
  ('Lowe','Quintessa','9170827-2'),
  ('Talley','Karyn','2243298-2'),
  ('Patel','Nigel','42461700-8');

-- Datos de la tabla neighborhood
INSERT INTO neighborhood (n_name,city)
VALUES
  ('Cascavel','Quibdó'),
  ('Maracanaú','Los Patios'),
  ('Guarapuava','Orito'),
  ('João Pessoa','Pitalito'),
  ('Diadema','Zona Bananera'),
  ('Ponta Grossa','Quimbaya'),
  ('São Luís','Barrancabermeja'),
  ('Caucaia','Tuluá'),
  ('Cajazeiras','Montenegro'),
  ('Sousa','Miraflores'),
  ('Ponta Grossa','Istmina'),
  ('Chapecó','Cartagena'),
  ('Maranguape','San Juan del Cesar'),
  ('Camaçari','Palmira'),
  ('Divinópolis','Pacoa');

-- Datos de la tabla hire_info
INSERT INTO hire_info (bid,sid,hire_date)
VALUES
  (6,2,'2017-11-30'),
  (5,7,'2019-07-13'),
  (9,12,'2021-11-26'),
  (3,5,'2023-03-12'),
  (11,2,'2020-03-29'),
  (2,6,'2021-08-04'),
  (15,6,'2017-06-15'),
  (3,3,'2021-08-11'),
  (7,7,'2021-10-21'),
  (15,13,'2023-04-19'),
  (7,4,'2017-08-23'),
  (10,4,'2019-11-29'),
  (5,15,'2017-05-15'),
  (13,5,'2020-01-13'),
  (12,3,'2020-04-21');

-- Datos de la tabla house
INSERT INTO house (h_name,finish_date,price,bid,nid)
VALUES
  ('Todd','2017-07-19',134450503,14,10),
  ('Kyla','2017-08-12',182294517,6,2),
  ('Emerald','2019-06-18',165445795,15,3),
  ('Colin','2016-09-01',137851192,3,10),
  ('Bethany','2021-12-03',124411940,12,2),
  ('Zena','2020-03-21',189613554,8,5),
  ('Kasper','2016-07-14',147295554,11,4),
  ('Nigel','2018-02-28',158504010,3,11),
  ('Ruth','2022-04-30',145418472,5,10),
  ('Raymond','2021-07-13',182333436,5,15),
  ('Noelle','2018-03-20',159598461,4,10),
  ('Kirby','2016-05-26',181991906,12,4),
  ('Yuri','2015-05-06',127664781,9,13),
  ('Anthony','2016-02-01',103435631,1,12),
  ('Lucy','2020-07-05',151942680,3,13);