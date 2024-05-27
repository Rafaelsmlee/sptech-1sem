CREATE DATABASE sptech;
use sptech;
create table empresa(
id_empresa 	int primary key,
nome_curso	varchar(50),
responsavel varchar(30)
);
select * from empresa;
insert into empresa(id_empresa, nome_curso, responsavel)
values (1, 'STEFANINI', 'KELLY');
insert into empresa(id_empresa, nome_curso, responsavel)
values (2, 'RAPPI', 'JORGE'),
 (3, 'C6', 'RODOLFO'),
 (4, 'ACCENTURE', 'BRAIAN');

create table curso(
id_curso 	int primary key,
nome_curso 	varchar(3)
);
create table periodo(
id_periodo int primary key,
periodo datetime
);

