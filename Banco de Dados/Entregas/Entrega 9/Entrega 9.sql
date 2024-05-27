drop database Exercicio11;
create database if not exists Exercicio11;
use  Exercicio11;



/*
Criar a tabela chamada Departamento para conter os campos: idDepto, nomeDepto, fkGerente, dataInicioGer (tipo date).
idDepto é a chave primária desta tabela. (NÃO USE AUTO_INCREMENT AQUI)
fkGerente é a chave estrangeira para idFunc da tabela Funcionario. (CONFIGURE ESTA CHAVE ESTRANGEIRA APÓS INSERIR OS DADOS)
*/
create table Departamento(
idDepto INT not null,
 nomeDepto VARCHAR(45) not null, 
 fkGerente INT not null, 
 dataInicioGer DATE not null,
 
 primary key(idDepto)
 );
 
 /*
 Criar a tabela chamada Funcionario para conter os campos: idFunc, nomeFunc (tamanho 30), salario, sexo, fkSupervisor, dataNasc (tipo date), fkDepto.
idFunc é a chave primária da tabela. (NÃO USE AUTO_INCREMENT AQUI)
fkSupervisor é a chave estrangeira para idFunc na mesma tabela. (MELHOR CONFIGURAR ESTA CHAVE ESTRANGEIRA SOMENTE APÓS INSERIR OS DADOS)
 
 */
 
 create table Funcionario  (
 idFunc int not null, 
 nomeFunc varchar (30) not null, 
 salario int not null, 
 sexo char(1) not null,
 fkSupervisor int null, 
 fkDepto int,
 dataNasc date,
 
 constraint CHK_Sexo check(sexo in ('m','f' )),
primary key(idFunc)
 );
 /*
Criar a tabela chamada Projeto para conter os dados: idProj, nomeProj, localProj, fkDepto.
idProj é a chave primária desta tabela. (NÃO USE AUTO_INCREMENT AQUI)
fkDepto é a chave estrangeira para idDepto da tabela Departamento.
*/

 create table Projeto (
 idProj int not null,
 nomeProj varchar(50) not null,
 localProj varchar(30) not null,
 fkDepto int not null,
 
 primary key(idProj),
constraint fk_Depto foreign key(fkDepto) references Departamento(idDepto)
 );
 
 /*·
 Criar a tabela FuncProj para conter os dados: fkFunc, fkProj, horas (tipo decimal(3,1)).
 fkFunc e fkProj compõem a chave primária desta tabela.
fkFunc é a chave estrangeira para idFunc da tabela Funcionario.
fkProj é a chave estrangeira para idProj da tabela Projeto.
*/
 
 create table FuncProj(
 fkFunc int not null,
 fkProj int not null,
 horas decimal(3,1),
 
 primary key (fkFunc, fkProj),
 constraint fk_Func foreign key (fkFunc) references Funcionario(idFunc),
 constraint fk_idProj foreign key (fkProj) references Projeto(idProj)
 );
 
 
 insert into Departamento
 (idDepto, nomeDepto, fkGerente, dataInicioGer)
 values 
 (105, 'Pesquisa', 2, '2008-05-22'),
 (104, 'Administração', 7, '2015-01-01'),
 (101, 'Matriz', 8, '2001-06-19');
 
 insert into Funcionario
 (idFunc, nomeFunc, salario, sexo, fkSupervisor, dataNasc, fkDepto )
 values
 (1, 'Joao Silva', 3500, 'm',2, '1985-01-09', 105),
 (2, 'Fernando Wong', 4500, 'm', 8, '1975-12-08', 105),
 (3, 'Alice Sousa', 2500, 'f', 7, '1988-01-19', 104),
 (4, 'Janice Morais', 4300, 'f', 8, '1970-06-20', 104),
 (5, 'Ronaldo Lima', 3800, 'm', 1, '1982-09-15', 105),
 (6 , 'Joice Leite', 2500, 'f', 1, '1992-07-31', 105),
 (7, 'Antonio Pereira', 2500, 'm', 4, '1989-03-29', 104),
 (8, 'Juliano Brito', 5500, 'm', NULL, '1957-11-10', 101);
 
 insert into Projeto
(idProj, nomeProj, localProj, fkDepto)
values
(1, 'Produto X', 'Santo André', 105),
(2, 'Produto Y', 'Itu', 105),
(3, 'Produto Z', 'São Paulo', 105),
(10, 'Informatização', 'Mauá', 104),
(20, 'Reorganização','São Paulo', 101),
(30, 'Benefícios', 'Mauá', 104);

insert into FuncProj
(fkFunc, fkProj, horas)
values
(1,1,32.5),
(1, 2, 7.5),
(5,3,40.0),
(6, 1, 20.0),
(6,2,20.0),
(2,2,10.0),
(2,3,10.0),
(2,10,10.0),
(2,20,10.0),
(3,30,30.0),
(3,10,10.0),
(7,10,35.0),
(7,30,5.0),
(4,30,20.0),
(4,20,15.0),
(8,20,NULL);


alter table Departamento
add constraint fk_gerente foreign key(fkGerente) references Funcionario(idFunc);

alter table Funcionario
add constraint Supervisor foreign key(fkSupervisor) references Funcionario(idFunc);

alter table Funcionario
add constraint fkDepto foreign key(fkDepto) references Departamento(idDepto);

 
 -- 1) Exibir os dados de cada tabela separadamente (confira se os dados foram inseridos corretamente).
 
 select * from Departamento
 order by idDepto desc;
 
 select * from Funcionario;
 
 select * from Projeto;
 
 select * from FuncProj;
 
 /*
 2) Inserir mais o seguinte funcionário na tabela Funcionario:
idFunc: null, nomeFunc: Cecília Ribeiro, salario: 2800, sexo: f, fkSupervisor: null, dataNasc: 1980-04-05, fkDepto: 104
Conseguiu inserir? Por que? */

insert into Funcionario
(idFunc, nomeFunc, salario, sexo, fkSupervisor, dataNasc, fkDepto)
values
( null, 'Cecília Ribeiro', 2800, 'f', null, '1980-04-05', 104);

-- Não será possível a inserção da funcionária Cecília Ribeiro na tabela, pois o idFunc, que é uma 'primary key', é 'null' e toda primary key é 'not null'

/* 
3)·Inserir mais o seguinte funcionário na tabela Funcionario:
idFunc: 3, nomeFunc: Alice Sousa, salario: 2800, sexo: f, fkSupervisor: 4, dataNasc: 1980-04-05, fkDepto: 104
Conseguiu inserir? Por que?
*/

insert into Funcionario
(idFunc, nomeFunc, salario, sexo, fkSupervisor, dataNasc, fkDepto)
values
( 3, 'Alice Sousa', 2800, 'f', 4, '1980-04-05', 104);

-- Não será possível a inserção da funcionária Alice Souza na tabela, pois o idFunc não pode repetir e a funcionário 'Alice Sousa' já está ocupando o idFunc 3, lembrando que 'Primary Keys' não podem repetir.

 

/*· 
4)Inserir mais o seguinte funcionário na tabela Funcionario:
idFunc:9, nomeFunc: Cecília Ribeiro, salario: 2800, sexo: f, fkSupervisor: 4, dataNasc: 1980-04-05, fkDepto: 107
Conseguiu inserir? Por que?
*/

insert into Funcionario
(idFunc, nomeFunc, salario, sexo, fkSupervisor, dataNasc, fkDepto)
values
( 9, 'Cecília Ribeiro', 2800, 'f', 4, '1980-04-05', 107);

-- Não será possível a inserção da funcionária Cecília Ribeiro na tabela, pois não existe um departamento com id 107, então o fkDepto não funciona.


/* 
5) Inserir mais o seguinte funcionário na tabela Funcionario:
idFunc:9, nomeFunc: Cecília Ribeiro, salario: 2800, sexo: f, fkSupervisor: 4, dataNasc: 1980-04-05, fkDepto: 104
Conseguiu inserir? Por que?*/

insert into Funcionario
(idFunc, nomeFunc, salario, sexo, fkSupervisor, dataNasc, fkDepto)
values
( 9, 'Cecília Ribeiro', 2800, 'f', 4, '1980-04-05', 104);

-- Foi possível a inserção da funcionária Cecília Ribeiro, pois todas as colunas foram preenchidas corretamente conforme as regras do banco de dados.


-- 6) Excluir a tupla (registro) da tabela FuncProj, em que fkFunc=3 e fkProj = 10.  Conseguiu excluir? Por que?
delete from FuncProj 
where fkFunc = 3 and fkProj = 10;

-- Foi possível a exclusão da tupla, pois os dados das colunas estavam na mesma linha e não havia uma 'foreign key' ligado a elas.


-- 7) Excluir a tupla da tabela Funcionario, em que idFunc=4. Conseguiu excluir? Por que?

delete from Funcionario
where idFunc = 4;

-- Não foi possível deletar a tupla, pois o idFunc está relacionado com outras tabelas por uma 'foreign key'.


-- 8) Excluir a tupla da tabela Funcionário, em que idFunc=2. Conseguiu excluir? Por que?
DELETE FROM Funcionario 
WHERE idFunc = 2;
    
-- Não foi possível deletar a tupla, pois o idFunc está relacionado com outras tabelas por uma 'foreign key'.


-- 9) Alterar o salário do Funcionário com idFunc=3 para 2800. Conseguiu alterar? Por que?

update Funcionario
set Salario = 2800
where idFunc = 3;

-- Foi possível alterar o salário do funcionário com id = 3, pois a função update não tem nenhuma restrição que impeça a mudança nesse cenário.


-- 10) Alterar o fkDepto do Funcionário com idFunc=3 para 101. Conseguiu alterar? Por que?

update Funcionario
set idFunc = 101
where idFunc = 3;

-- Não é possível alterar o idFunc para 101, pois ela já está atrelaçada a outras 'foreign keys(fk)' de outras tabelas, para fazer a mudança precisaríamos deletar as 'fk's das outras tabelas primeiro.


-- 11)  Alterar o fkDepto do Funcionário com idFunc=3 para 107. Conseguiu alterar? Por que?

update Funcionario
set idFunc = 107
where idFunc = 3;

-- Não é possível alterar o idFunc para 101, pois ela já está atrelaçada a outras 'foreign keys(fk)' de outras tabelas, para fazer a mudança precisaríamos deletar as 'fk's das outras tabelas primeiro.


-- 12) Exibir a data de nascimento e o salário do funcionário João Silva.

select dataNasc, salario
from Funcionario
where nomeFunc = 'João Silva';

-- 13)Exibir uma lista apenas dos salários de todos os funcionários.

select salario
from Funcionario;

-- 14) Exibir uma lista apenas dos salários distintos de todos os funcionários.

select  distinct salario
from Funcionario;


-- 15) Exibir os dados dos funcionários ordenados pelo nome.

select *
from funcionario
order by nomeFunc asc;

-- 16) Exibir os dados dos funcionários ordenados pelo salário, de forma decrescente.

select *
from funcionario
order by salario desc;

-- 17) Exibir os dados dos funcionários que tenham salário entre 2000 e 4000.

select *
from funcionario
where salario between 2000 and 4000;

-- 18) Exibir os nomes e os salários dos funcionários cujos nomes começam com a letra ‘J’.

select nomeFunc, salario
from funcionario
where nomeFunc like 'J%';

-- 19) Exibir os nomes e os salários dos funcionários cujos nomes terminam com a letra ‘a’.

select nomeFunc, salario
from funcionario
where nomeFunc like '%_a';

-- 20) Exibir os nomes dos funcionários que tem a letra ‘n’ como terceira letra do nome.

select nomeFunc
from funcionario
where nomeFunc like '__n%';

-- 21) Exibir os nomes e as datas de nascimento dos funcionários cujos nomes tenham a letra ‘S’ como 5ª letra de trás para frente.

select nomeFunc, dataNasc
from funcionario
where nomeFunc like '%_____S%';

-- 22) Exibir os dados dos funcionários que trabalham no departamento Pesquisa.

select f.*
from funcionario as f
join departamento as dp on f.fkDepto = dp.idDepto
where dp.nomeDepto ='Pesquisa' ;

-- 23) Exibir os dados dos funcionários que trabalham no departamento Pesquisa e que tenham salário acima de 3500.

select f.*
from funcionario as f
join departamento as dp on f.fkDepto = dp.idDepto
where dp.nomeDepto ='Pesquisa' and f.salario > 3500 ;


-- 24) Exibir os dados dos funcionários que trabalham no departamento Pesquisa e que tenham o nome com inicial ‘J’.

select f.*
from funcionario as f
join departamento as dp on f.fkDepto = dp.idDepto
where dp.nomeDepto ='Pesquisa' and f.nomeFunc like 'J%' ;

-- 25)  Exibir o idFunc e o nome de cada funcionário, juntamente com o idFunc e o nome do seu supervisor. Faça com que o título da coluna seja “idFuncionario” para funcionário e “idSupervisor” para o id do supervisor.

select f.idFunc as 'idFuncionario', f.nomeFunc, sup.idFunc as 'idSupervisor', sup.nomeFunc
from funcionario as f
left join funcionario as sup on  f.fkSupervisor = sup.idFunc ;


-- 26)   Exibir para cada projeto localizado em São Paulo, o idProj do projeto, o número do departamento que o controla, o nome e a data de nascimento do gerente do departamento.

select pj.idProj, dp.idDepto, f.nomeFunc, f.dataNasc
from funcproj as fpj
join projeto as pj on fpj.fkProj = pj.idProj
join funcionario as f on fpj.fkFunc = f.idFunc
join departamento as dp on f.idFunc = dp.fkGerente
where pj.localProj = 'São Paulo';

-- 27)     Exibir o idFunc e o nome do funcionário, o projeto e o nome do projeto em que trabalha, e a quantidade de horas que trabalha nesse projeto.

select
f.idFunc, 
f.nomeFunc,
pj.idProj,
pj.nomeProj, 
fpj.horas
from funcionario as f
join funcproj as fpj on idFunc =fpj.fkFunc
join projeto as pj on fpj.fkProj = pj.idProj;
 

-- 28)    Exibir os nomes dos funcionários que nasceram antes de 1980.
select nomeFunc
from Funcionario
where dataNasc < '1980-01-01';
-- ou
select nomeFunc
from Funcionario
where year(dataNasc) < 1980;

-- 29)     Exibir a quantidade de salários diferentes que existem na empresa.

select count(distinct(salario))
from funcionario;


-- 30) Exibir a quantidade de locais diferentes de projeto.

select count(distinct(localProj))
from projeto;

-- 31) Exibir o salário médio da empresa e a soma dos salários.

select round(avg(salario),2), sum(salario)
from funcionario;

-- 32) Exibir o menor e o maior salário da empresa.

select min(salario), max(salario)
from funcionario;

-- 33) Exibir o idDepto, o salário médio e a soma do salário de cada departamento (agrupado por departamento)

select dp.idDepto, round(avg(f.salario),2), sum(f.salario)
from departamento as dp
join funcionario as f on f.fkDepto = dp.idDepto
group by dp.idDepto;

-- 34) Exibir o idDepto, o menor e o maior salário de cada departamento (agrupado por departamento).

select dp.idDepto, min(f.salario), max(f.salario)
from departamento as dp
join funcionario as f on f.fkDepto = dp.idDepto
group by dp.idDepto;

 