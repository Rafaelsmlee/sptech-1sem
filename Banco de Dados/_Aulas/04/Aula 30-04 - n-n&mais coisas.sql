create database aula3004;
use aula3004;


create table aluno
(id INT not null auto_increment,
nome varchar(45) not null,
primary key (id)
);

create table empresa
(id INT not null auto_increment,
nome varchar(45) not null,
primary key(id)
)auto_increment = 1000;

create table aluno_empresa
(
fkEmpresa int not null,
fkaluno int not null,
prioridade int not null,
primary key (fkempresa, fkaluno),
foreign key(fkempresa) references empresa(id),
foreign key (fkaluno) references aluno(id)
);

insert into aluno(nome)
values ('Pedro'),
('Rafael'),
('Lurdes');

insert into empresa (nome)
values ('Itaú'),
('C6'),
('Unibank');

insert into aluno_empresa (fkaluno, fkempresa, prioridade)
values (1, 1000, 3),
	   (1, 1001, 2),
       (1, 1002, 1),
       (2, 1001, 1),
       (2, 1000, 0),
       (3, 1002, 0);
       
select * from aluno_empresa;

select *
from aluno as alu
inner join  aluno_empresa as ae on alu.id = ae.fkaluno
inner join  empresa as emp on emp.id = ae.fkempresa;

select alu.id, alu.nome,emp.id, emp.nome, ae.prioridade
from aluno as alu
inner join  aluno_empresa as ae on alu.id = ae.fkaluno
inner join  empresa as emp on emp.id = ae.fkempresa
order by emp.nome;
 
 /*
Saber o nome do aluno e quantas vezes ele aparece na prioridade na tabela aluno_empresa

*/
select count(*)
from aluno as alu
inner join  aluno_empresa as ae on alu.id = ae.fkaluno
inner join  empresa as emp on emp.id = ae.fkempresa;

/*Qnd quiser contar algo especifico é obrigatório usar group by SEMPRE ou da erro de sintaxe; */

select alu.nome, count(ae.fkaluno) as contador
from aluno as alu
inner join  aluno_empresa as ae on alu.id = ae.fkaluno
inner join  empresa as emp on emp.id = ae.fkempresa
where alu.id between 2 and 3 /*somente os alunos de id entre 2 e 3 */
group by alu.nome
order by 2 asc; /* '2' é a segunda coluna procurada pelo select, nesse caso o 'contador'*/


/*
A empresa quantas vezes foram selecionadas
Obrigatório usar group by SEMPRE ou da erro de sintaxe;
*/
select emp.nome, count(ae.fkaluno) as contador
from aluno as alu
inner join  aluno_empresa as ae on alu.id = ae.fkaluno
inner join  empresa as emp on emp.id = ae.fkempresa
group by emp.nome;

/* NÃO deixa repetir o nome*/
select distinct alu.nome
from aluno as alu
inner join  aluno_empresa as ae on alu.id = ae.fkaluno
inner join  empresa as emp on emp.id = ae.fkempresa;

select alu.nome, count(distinct ae.fkaluno) as contador
from aluno as alu
inner join  aluno_empresa as ae on alu.id = ae.fkaluno
inner join  empresa as emp on emp.id = ae.fkempresa
group by alu.nome
order by 2 asc; 

/*avg = avarege, faz a média de um dado */

select  avg(distinct ae.prioridade) as contador
from aluno as alu
inner join  aluno_empresa as ae on alu.id = ae.fkaluno
inner join  empresa as emp on emp.id = ae.fkempresa;

select  alu.nome, avg(distinct ae.prioridade) as contador
from aluno as alu
inner join  aluno_empresa as ae on alu.id = ae.fkaluno
inner join  empresa as emp on emp.id = ae.fkempresa
group by alu.nome;

/*Para saber qual a priroridade menor e maior */

select  min(distinct ae.prioridade) as min, max(distinct ae.prioridade) as maximo
from aluno as alu
inner join  aluno_empresa as ae on alu.id = ae.fkaluno
inner join  empresa as emp on emp.id = ae.fkempresa;

/*Para saber qual a priroridade menor e maior do aluno */

select alu.nome, min(distinct ae.prioridade) as min, max(distinct ae.prioridade) as maximo
from aluno as alu
inner join  aluno_empresa as ae on alu.id = ae.fkaluno
inner join  empresa as emp on emp.id = ae.fkempresa
group by alu.nome
;

/*Megazord de select */

select  alu.nome, emp.nome,
 min(distinct ae.prioridade) as minimo, max(distinct ae.prioridade) as maximo,
avg(ae.prioridade) as media, count(*) qtde, sum(ae.prioridade) as soma
from aluno as alu
inner join  aluno_empresa as ae on alu.id = ae.fkaluno
inner join  empresa as emp on emp.id = ae.fkempresa
group by alu.nome, emp.nome
;

select  emp.nome,
 min(distinct ae.prioridade) as minimo, max(distinct ae.prioridade) as maximo,
avg(ae.prioridade) as media, count(*) qtde, sum(ae.prioridade) as soma
from aluno as alu
inner join  aluno_empresa as ae on alu.id = ae.fkaluno
inner join  empresa as emp on emp.id = ae.fkempresa
group by emp.nome
;

/*Pode usar 'order by' com os comandos do select */
select  emp.nome,
 min(distinct ae.prioridade) as minimo, max(distinct ae.prioridade) as maximo,
avg(ae.prioridade) as media, count(*) qtde, sum(ae.prioridade) as soma
from aluno as alu
inner join  aluno_empresa as ae on alu.id = ae.fkaluno
inner join  empresa as emp on emp.id = ae.fkempresa
group by emp.nome
-- order by sum(ae.prioridade) desc
 order by 6 desc
;

-- empresas cujo os nomes a prioridade esta acima da média
-- sub query =  dar select depois do from

select 
emp.nome as 'Nome da empresa', 
alu.nome as 'Nome do aluno', 
ae.prioridade as 'Prioridade do aluno'
from aluno as alu
inner join  aluno_empresa as ae on alu.id = ae.fkaluno
inner join  empresa as emp on emp.id = ae.fkempresa
where ae.prioridade > (select avg(prioridade) as wtf
	from aluno_empresa)
;

update aluno_empresa set prioridade = prioridade +5;


select 
emp.nome as 'Nome da empresa', 
alu.nome as 'Nome do aluno', 
ae.prioridade as 'Prioridade do aluno',
med.media as 'Média'
from aluno as alu
inner join  aluno_empresa as ae on alu.id = ae.fkaluno
inner join  empresa as emp on emp.id = ae.fkempresa
inner join (select fkaluno, 
	avg(prioridade) as media 
	from aluno_empresa
    group by fkaluno) as med on med.fkaluno = alu.id
;
