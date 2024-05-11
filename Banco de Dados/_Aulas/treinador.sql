create database pratica5;
use pratica5;

create table treinador (
idTreinador int primary key auto_increment,
nome varchar(45),
telefone varchar(15),
email varchar(90),
fkOrientador int,

constraint fk_orientador foreign key (fkOrientador) references treinador(idTreinador)

) auto_increment=10;

create table nadador (
idNadador int primary key auto_increment,
nome varchar(45),
estado varchar(30),
dtNasc date,
fkTreinador int

)auto_increment = 100;

alter table nadador add constraint fk_treinador 
foreign key (fkTreinador) references treinador(idTreinador);

insert into treinador (nome, telefone, email)
values 	('José', 'xx-xxxxx-xxxx', 'jose@gmail.com'),
		('Maria', 'xx-xxxxx-xxxx', 'maria@gmail.com');
        
select * from treinador;
        
insert into treinador (nome, telefone, email, fkOrientador)
values 	('Alex', 'xx-xxxxx-xxxx', 'alex@gmail.com',10),
('ana', 'xx-xxxxx-xxxx', 'maria@gmail.com',11);
        
select 
		ori.idTreinador as 'id Orientador',
		ori.nome as 'Orientador', 
		tre.idTreinador as 'id Novato', 
		tre.nome as 'Novato' 
from treinador as ori
inner join treinador as tre on tre.fkOrientador = ori.idTreinador;
        
        
insert into nadador (nome, estado, dtNasc, fkTreinador)
values 	('Aline-nadadora', 'Sao Paulo', '1999-10-01', 10),
		('Anna-nadadora', 'Sao Paulo', '1998-10-02', 11),
		('Alex-nadador', 'Sao Paulo', '1997-10-03', 12),
		('Julia-nadadora', 'Sao Paulo', '1999-10-05', 13),
		('Bruna-nadadora', 'Sao Paulo', '1999-10-04', 10);

insert into nadador (nome, estado, dtNasc, fkTreinador)
values 	('Murilo-nadador', 'Sao Paulo', '1999-10-01', 12),
		('Giovanna-nadadora', 'Sao Paulo', '1998-10-02', 12),
		('Gustavo-nadador', 'Sao Paulo', '1997-10-03', 13),
		('Juliana-nadadora', 'Sao Paulo', '1999-10-05', 13);
        
        
-- verificar a quantidade de nadadores
select * from nadador;        # retornou 9 linhas
-- utilizando o left join     
select tre.idTreinador as 'id Treinador', 
       tre.nome as 'Treinador',
       na.idNadador,
       na.nome nadador,
       ori.idTreinador idorientador,
       ori.nome nome_orientador
from treinador as tre
inner join nadador as na on na.fkTreinador = tre.idTreinador
left join treinador as ori on ori.idTreinador = tre.fkOrientador;
-- utilizando union
select 
	tre.idTreinador as 'id Novato', 
	tre.nome as 'Novato',
	na.idNadador as 'id Nadador',
	na.nome as 'Nadador'
from treinador as tre
inner join nadador as na on na.fkTreinador = tre.idTreinador
where tre.fkOrientador is not null
union
select 
	tre.idTreinador as 'id treinador', 
	tre.nome as 'treinador',
	na.idNadador as 'id Nadador',
	na.nome as 'Nadador'
from treinador as tre
inner join nadador as na on na.fkTreinador = tre.idTreinador
where tre.fkOrientador is null;


select *
from treinador as tre
inner join nadador as na on na.fkTreinador = tre.idTreinador;

insert into treinador (nome, telefone, email,fkOrientador)
values 	('Juan', 'xx-xxxxx-xxxx', 'jose@gmail.com', null);

select tre.idTreinador as 'id Treinador', 
       tre.nome as 'Treinador',
       na.idNadador as 'idNadador',
       na.nome  as 'Nadador'
from treinador as tre
left join nadador as na on tre.idTreinador = na.fkTreinador;

select
tre.idTreinador as 'id Treinador',
tre.nome as 'nome',
'Treinador' tipo
from treinador as tre
union
select
na.idNadador as 'id Nadador',
na.nome as 'Nadador',
'Nadador'
from nadador as na;