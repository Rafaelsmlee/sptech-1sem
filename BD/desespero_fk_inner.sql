create database sprint2;
use sprint2;

create table Empresa(
idEmpresa INT auto_increment,
nome varchar(45) not null,
representante varchar(45) not null,

primary key (idEmpresa)
);


insert into Empresa 
(nome_empresa, representante_empresa)
values 
('Tim', 'Pedro'),
('Vivo', 'Maria'),
('Disney', 'Walt'),
('Hulu', 'Jack'),
('Yetz', 'Matheus');

select * from Empresa;



create table aluno(
RA INT auto_increment,
nome VARCHAR(45),
dataNasc datetime,

fk_idEmpresa INT NOT NULL,
primary key (idAluno),
foreign key foreignkey_idEmpresa (fk_idEmpresa) references Empresa (id)

) auto_increment=01241001;

describe aluno;

insert into aluno
(fk_idEmpresa, nome_aluno)
values
(2,'Aline'),
(3,'Iara'),
(4,'Ulisses'),
(1,'Stefanni'),
(2,'Kimi'),
(3,'Aaron');
 
 select * from Aluno;
 
select * 
from Aluno
inner join Empresa on fk_idEmpresa = idEmpresa
order by nome_aluno desc;


select em.nome_empresa as em_nome , -- se não quiser botar nome_empresa e só nome, usando em. funciona pra buscar na tabela em o nome --
em.representante_empresa as rep_empresa,
al.nome_aluno  al_nome
from aluno  al
inner join empresa as em on em.idEmpresa = al.fk_idEmpresa;

select year(current_date());

select *
from aluno al
where year(current_date()) - year(data_nasc) between 19 and 21
order by al.nome;
