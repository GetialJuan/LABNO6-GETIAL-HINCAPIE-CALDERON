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