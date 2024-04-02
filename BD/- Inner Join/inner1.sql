CREATE database sprint2;
USE sprint2 ;

-- -----------------------------------------------------
-- Table sala
-- -----------------------------------------------------
CREATE TABLE sala (
  id INT auto_increment NOT NULL,
  descricao VARCHAR(45) NULL,
  PRIMARY KEY (id));

insert into sala(descricao)
values ('Sala 6A'),
       ('Sala 6B'),
       ('Sala 1A'),
       ('Sala 1B'),
       ('Sala 2A');

select * from sala;

-- -----------------------------------------------------
-- Table sensor
-- -----------------------------------------------------
CREATE TABLE sensor (
  id INT auto_increment NOT NULL,
  serial_number VARCHAR(45) NULL,
  tipo char(1) not null,
  fksala INT NOT NULL,
  PRIMARY KEY (id),
  constraint ck_tipo check (tipo in('T','U')),
  CONSTRAINT fk_sensor_sala1 FOREIGN KEY (fksala) REFERENCES sala (id)
) auto_increment=1000;

insert into sensor(serial_number, tipo, fksala)
values ('x1000', 'T', 1),
       ('x1001', 'U', 1),
       ('x1002', 'T', 2),
       ('x1003', 'U', 3),
       ('x1004', 'T', 4),
       ('x1005', 'U', 5);

select * from sensor;

select sa.id as id_sala, se.id as is_sensor
from sala as sa
inner join sensor as se on se.fksala = sa.id;

select *
from sala
inner join sensor on sensor.fksala = sala.id;


select sala.*, sensor.*
from sala
inner join sensor on sensor.fksala = sala.id;

select sala.id as 'id Sala', descricao as 'numero da sala',
sensor.*
from sala 
inner join sensor on sensor.fksala = sala.id;


-- -----------------------------------------------------
-- Table leituras
-- -----------------------------------------------------
CREATE TABLE leitura (
  fksensor INT NOT NULL,
  sequencia INT NOT NULL,
  data_leitura datetime not NULL,
  medicao DECIMAL(5,2) NULL,
  PRIMARY KEY (fksensor, sequencia),
  unique data_leitura(fksensor, data_leitura),
  CONSTRAINT fk_leituras_sensor FOREIGN KEY (fksensor) REFERENCES sensor (id)
);

insert into leitura(fksensor, sequencia, data_leitura, medicao)
values (1002, 1, '2024-01-19 12:30:00', 60.1),
       (1002, 2, '2024-01-19 12:31:00', 50.1), 
       (1002, 3, '2024-01-19 12:32:00', 40), 
       (1000, 1, '2024-01-19 12:30:00', 50.1), 
       (1000, 2, '2024-01-19 12:31:00', 40.90),
       (1001, 1, '2024-01-19 12:35:00', 50.1),
       (1003, 1, '2024-01-19 12:30:00', 50.1),
       (1004, 1, '2024-01-19 12:30:00', 50.1), 
       (1005, 1, '2024-01-19 12:30:00', 50.1),
       (1005, 2, '2024-01-19 12:32:00', 50.1), 
       (1000, 3, '2024-01-19 12:33:00', 50.1); 
       
       
select *
from sala as sa
inner join sensor as se on se.fksala = sa.id
inner join leitura as le on le.fksensor = se.id;

!drop database sprint2;