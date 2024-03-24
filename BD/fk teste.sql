create database sprint1;
use sprint1;

create table sala(
idSala INT,
descricao VARCHAR(45),

primary key (idSala)

);

create table sensor (
idSensor INT,
serial VARCHAR(45),
tipo VARCHAR(45),
fk_sala INT,

primary key pk_idSensor (idSensor),
foreign key foreignkey_idSensor (fkSensor) references sensor (idSensor)
);
