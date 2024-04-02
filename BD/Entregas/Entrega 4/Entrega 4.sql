/*. 1. No MySQL Workbench, utilizando o banco de dados ‘sprint2’:
Fazer a modelagem lógica e física conforme a regra de negócio:
• 1 professor leciona 1 ou muitas disciplinas;
• 1 disciplina é lecionada por apenas 1 professor;*/

create database sprint2;
use sprint2;

/*
Criar a tabela chamada Professor para conter os dados: idProfessor, nome
(tamanho 50), sobrenome (tamanho 30), especialidade1 (tamanho 40),
especialidade2 (tamanho 40), sendo que idProfessor é a chave primária da tabela.
Inserir pelo menos uns 6 professores.
Criar a tabela chamada Disciplina para conter os dados: idDisc, nomeDisc
(tamanho 45), sendo que idDisc é a chave primária da tabela.
Inserir pelo menos 3 disciplinas.*/

create table Disciplina
(idDisc INT auto_increment,
nomeDisc VARCHAR(45) not null,
primary key(idDisc)
);

insert into Disciplina
(nomeDisc)
values ('Matemática'),
	   ('Física'),
       ('Português'),
       ('Redação'),
       ('História'),
       ('Geografia');


CREATE TABLE Professor(
idProfessor INT auto_increment,
nome VARCHAR(50) not null,
sobrenome VARCHAR(30) not null,
especialidade1 INT not null,
especialidade2 INT not null,
primary key (idProfessor),
foreign key (especialidade1) references Disciplina(idDisc),
foreign key(especialidade2) references Disciplina(idDisc)
);

insert into Professor
(nome, sobrenome, especialidade1, especialidade2)
values ('Raul','Fernandes', 1, 2 ),
	   ('Nathalia', 'Gomes', 3, 4),
       ('Pedro', 'Henrique', 5, 6),
       ('Amanda','Nunes', 4, 3),
       ('Georgia', 'Pires', 1, 5),
       ('Lua', 'Ranieris', 2, 4);
              

/*Escreva e execute os comandos para:

Escreva e execute os comandos para:
• Configurar a chave estrangeira na tabela conforme sua modelagem (Pode
fazer no comando CREATE TABLE);
• Exibir os professores e suas respectivas disciplinas;*/

select * 
from Professor as p
join Disciplina as d on  p.especialidade1 = d.idDisc
join Disciplina as d2 on p.especialidade2 = d2.idDisc;

/*
• Exibir apenas o nome da disciplina e o nome do respectivo professor;*/

select concat(p.nome, ' ', p.sobrenome) as 'Nome do Professor', d.nomeDisc as 'Disciplina 1', d2.nomeDisc as 'Disciplina 2'
from Professor as p
join Disciplina as d on p.especialidade1 = d.idDisc
join Disciplina as d2 on p.especialidade2 = d2.idDisc;


/*
• Exibir os dados dos professores, suas respectivas disciplinas de um
determinado sobrenome;*/

select *
from Professor as p
join Disciplina as d on p.especialidade1 = d.idDisc 
join Disciplina as d2 on p.especialidade2 = d2.idDisc
where p.sobrenome = 'Ranieris';

/*
• Exibir apenas a especialidade1 e o nome da disciplina, de um determinado
professor, ordenado de forma crescente pela especialidade1; */

select p.especialidade1 as 'ID da Disciplina 1', d.nomeDisc as 'Disciplina 1'
from Professor as p
join Disciplina as d on p.especialidade1 = d.idDisc
where p.nome = 'Lua'
order by p.especialidade1 asc;


/*2. No MySQL Workbench, utilizando o banco de dados ‘sprint2’:*/

use sprint2;

/*Criar a tabela chamada Curso para conter os dados: idCurso, nome (tamanho 50),
sigla (tamanho 3), coordenador, sendo que idCurso é a chave primária da tabela.
Inserir dados na tabela, procure inserir pelo menos 3 cursos.
Crie uma regra de negócio com uma nova tabela a sua escolha. Relacione a
tabela que você criou com a tabela curso e insira ou atualize os dados;
Execute os comandos para:
a) Crie a Modelagem Lógica;
*/

create table professor
(idProfessor INT auto_increment,
nome varchar(45) not null,
sobrenome varchar(45) not null,
primary key(idProfessor)
);
insert into professor
(nome, sobrenome)
values ('Pedro', 'Alcantara'),
	    ('Pablo', 'Maçal'),
        ('Betina', 'Anjos'),
        ('Arnold', 'Clabin');


create table Curso
(idCurso INT auto_increment,
nome VARCHAR(50) not null,
sigla CHAR(3) not null,
coordenador INT,

primary key(idCurso),
foreign key (coordenador) references Professor(idProfessor)
);
insert into Curso
(nome, sigla, coordenador)
values ('Admnistração', 'ADM', 1),
	    ('Economia', 'ECO', 2),
        ('Psicologia', 'PSI', 3),
        ('Psicologia', 'PSI', 4);

/*b) Faça um JOIN entre as duas tabelas;*/

select c.*, concat(p.nome, ' ', p.sobrenome) as 'nome do coordenador'
from curso as c
join professor as p on c.coordenador = p.idProfessor;

/*
c) Faça um JOIN com WHERE entre as duas tabelas;*/

select c.*, concat(p.nome, ' ', p.sobrenome) as 'nome do coordenador'
from curso as c
join professor as p on c.coordenador = p.idProfessor
where c.sigla = 'PSI'
order by p.nome asc;

/*
d) Crie um campo com a restrição (constraint) de CHECK;*/

alter table professor 
add EAD VARCHAR(10);

alter table professor add constraint chkEAD
check (EAD in ('EAD', 'Presencial'));

select * from Professor;

update professor
set EAD = 'Presencial'
where idProfessor in (1,2,3);

update professor
set EAD = 'EAD'
where idProfessor = 4;

select c.nome as 'Nome do Curso', c.sigla as 'Sigla do Curso', p.idProfessor as 'Registro do Professor', concat(p.nome, ' ', p.sobrenome) as 'nome do coordenador', p.ead as 'Presencial ou EAD'
from curso as c
join professor as p on c.coordenador = p.idProfessor;

/*3. Fazer a modelagem conceitual (DER) de um sistema para um pet shop cadastrar
os pets e seus donos (clientes).
- Cada pet pertence somente a um cliente.
- Cada cliente pode ter mais de um pet cadastrado.
- Sobre cada pet, o sistema guarda um identificador que é inicializado com 101 e
incrementado de forma automática. Esse identificador é a chave primária que
identifica um pet de forma única. Além do identificador, o sistema guarda
 o tipo do animal (se é cachorro, gato, etc), 
 o nome, 
 a raça
 e a data de nascimento do pet.

- Sobre cada cliente, o sistema guarda também um identificador que identifica de
forma única cada cliente. Esse 
identificador começa a partir de 1 e é incrementado
de forma automática pelo sistema. 
Além do código, o sistema guarda o nome,
 o telefone fixo,
 o telefone celular 
 e o endereço de cada cliente.
Criar um banco de dados Pet no MySQL, selecionar esse banco de dados e
executar as instruções relacionadas a seguir.
- Criar as tabelas equivalentes à modelagem.*/

create table Cliente(
idCliente INT auto_increment,
nome varchar(45) NOT NULL,
sobrenome varchar(45) NOT NULL,
telefoneFixo varchar(12),
telefoneCelular varchar(12) NOT NULL,
endereco varchar(45) NOT NULL,
primary key(idCliente)
);


create table pet(
idPet INT auto_increment,
tipoAnimal varchar(45) NOT NULL,
nome varchar(45) NOT NULL,
raca varchar(45) NOT NULL,
dataNascimento date NOT NULL,
fk_idCliente INT,

primary key(idPet),
foreign key(fk_idCliente) references Cliente (idCliente)
)auto_increment=101;


/*- Inserir dados nas tabelas, de forma que exista mais de um tipo de animal
diferente, e que exista algum cliente com mais de um pet cadastrado. Procure
inserir pelo menos 2 clientes diferentes que tenham o mesmo sobrenome.*/

insert into cliente
 (nome, sobrenome, telefoneFixo, telefoneCelular, endereco) 
 values ('Maria', 'Rocket', '12345678', '999872111', 'Rua das Minhocas, 444'),
		('Victor', 'Hauls', '11345678', '012999872111', 'Avenida Brasil, 777'),
		('Giovanni', 'Rocket', '11145678', '999872112', 'Palm Spring Brasil, 999');
        
insert into pet 
(tipoAnimal, nome, raca, dataNascimento, fk_idCliente)
values ('Cachorro', 'Toto', 'Yorkshire', '2023-02-12', 1),
	   ('Gato', 'Bigode', 'Siames', '2018-02-15', 2),
	   ('Cachorro', 'Fluffy', 'Salsinha', '2020-07-09', 1),
	   ('Pássaro', 'Peco', 'Canário', '2015-04-28', 3);
       

/*
- Exibir todos os dados de cada tabela criada, separadamente.
- Fazer os acertos da chave estrangeira, caso não tenha feito no momento da
criação.*/

select * from cliente;
select * from pet;

/*
- Altere o tamanho da coluna nome do cliente.*/

alter table cliente
modify column nome VARCHAR(60);

/*
- Exibir os dados de todos os pets que são de um determinado tipo (por exemplo:
cachorro).*/

select p.*, concat(c.nome, ' ', c.sobrenome) as 'Nome do dono', c.telefoneFixo as 'Telefone Fixo', c.telefoneCelular as 'Telefone Móvel', c.endereco as 'Endereço'
from pet as p
join cliente as c on fk_idCliente = c.idCliente;

/*
- Exibir apenas os nomes e as datas de nascimento dos pets.*/

select p.nome, p.dataNascimento
from pet as p;

/*
- Exibir os dados dos pets ordenados em ordem crescente pelo nome.*/
select p.*, concat(c.nome, ' ', c.sobrenome) as 'Nome do dono', c.telefoneFixo as 'Telefone Fixo', c.telefoneCelular as 'Telefone Móvel', c.endereco as 'Endereço'
from pet as p
join cliente as c on fk_idCliente = c.idCliente
order by p.nome asc;
/*
- Exibir os dados dos clientes ordenados em ordem decrescente pelo bairro.*/

alter table cliente
add  bairro varchar(45);

update cliente
set bairro = 'Laranjinha'
where idCliente = '1';

update cliente
set bairro = 'Verdenoide'
where idCliente in (2,3);

select * from cliente;

select p.*, concat(c.nome, ' ', c.sobrenome) as 'Nome do dono', c.telefoneFixo as 'Telefone Fixo', c.telefoneCelular as 'Telefone Móvel', c.endereco as 'Endereço', c.bairro as 'Bairro'
from pet as p
join cliente as c on fk_idCliente = c.idCliente
order by c.bairro desc;

/*
- Exibir os dados dos pets cujo nome comece com uma determinada letra.*/

select p.*, concat(c.nome, ' ', c.sobrenome) as 'Nome do dono', c.telefoneFixo as 'Telefone Fixo', c.telefoneCelular as 'Telefone Móvel', c.endereco as 'Endereço', c.bairro as 'Bairro'
from pet as p
join cliente as c on fk_idCliente = c.idCliente
where p.nome like 'F%';
/*
- Exibir os dados dos clientes que têm o mesmo sobrenome.*/

select p.*, concat(c1.nome, ' ', c1.sobrenome) as 'Nome do dono', c1.telefoneFixo as 'Telefone Fixo', c1.telefoneCelular as 'Telefone Móvel', c1.endereco as 'Endereço', c1.bairro as 'Bairro'
from cliente as c1
join pet as p on fk_idCliente = c1.idCliente
join cliente as c2 on c1.sobrenome = c2.sobrenome and c1.idCliente <> c2.idCliente;


/*
- Alterar o telefone de um determinado cliente.
- Exibir os dados dos clientes para verificar se alterou.*/
update cliente as c
set c.telefoneFixo = '11115678', c.telefoneCelular = '999872131'
where c.idCliente = 3;

select * from Cliente;

/*
- Exibir os dados dos pets e dos seus respectivos donos.*/

select p.*, c.*
from pet as p
join cliente as c on p.fk_idCliente = c.idCliente;

/*
- Exibir os dados dos pets e dos seus respectivos donos, mas somente de um
determinado cliente.*/
select p.*, c.*
from pet as p
join cliente as c on p.fk_idCliente = c.idCliente
where c.idCliente = 1;

/*
- Excluir algum pet.
- Exibir os dados dos pets para verificar se excluiu.*/

delete from pet
where idPet = 104;
select * from Pet;

/*
- Excluir as tabelas.*/
drop table pet;
drop table cliente;


/*
4. Fazer a modelagem conceitual (DER) de um sistema para UMA clínica médica.
Supor que a clínica tem vários médicos e vários pacientes, sendo que cada
paciente pode ser atendido por mais de um médico da clínica. E cada médico,
obviamente, pode atender mais de um paciente.
Sobre o paciente, o sistema guarda um identificador, o nome, o número do
telefone (que pode ser mais de um) e o endereço.
Sobre o médico, o sistema guarda o número de CRM (Conselho Regional de
Medicina), que é usado como identificador do médico, o nome do médico, a
especialidade do médico (que pode ser mais de uma) e o número de telefone do
médico (que pode ser mais de um).
É importante também guardar a informação da data e horário de cada consulta
realizada.
Atenção: Não precisa ter a entidade clinica, porque não vamos armazenar dados
de várias clínicas, apenas de uma!
Não precisa implementar no MySQL.*/

/*
5. Fazer a modelagem conceitual (DER) de um sistema para armazenar os gastos
individuais das pessoas de sua família.
Crie uma entidade Pessoa, com atributos 
idPessoa, 
nome, 
data de nascimento,
profissão.

Crie uma outra entidade Gasto, com atributos 
idGasto, 
data, 
valor,
descrição.
Depois de desenhado o DER, implemente no MySQL as tabelas equivalentes ao
modelo que você criou e:*/

create table Pessoa
(idPessoa INT auto_increment,
nome VARCHAR(50) not null,
dataNascimento date,
profissao varchar(50) not null,

primary key(idPessoa)
);

create table Gastos
(idGastos INT auto_increment,
dataGasto date not null,
valor decimal(5,2) not null,
descricao varchar(100) not null,
fk_idPessoa int,

primary key (idGastos),
foreign key (fk_idPessoa) references Pessoa(idPessoa)
);

/*
• Insira dados nas tabelas.*/

insert into Pessoa
(nome, dataNascimento,profissao)
values('Maria', '2000-04-03', 'Estagiária'),
	  ('Pedro', '1994-08-15', 'Desempregado'),
      ('Rockelme', '1980-12-29', 'Bancário');
      
insert into Gastos
(dataGasto, valor, descricao, fk_idPessoa)
values ('2024-03-02', '140.00', 'Almoço', 3),
	   ('2024-02-01', '35.00', 'Netflix', 2),
       ('2023-12-24', '300.00', 'Ceia de Natal', 1),
       ('2024-03-02', '99.00', 'SmartFit', 3);
       

/*
• Exiba os dados de cada tabela individualmente.*/

select * from Pessoa;
select * from Gastos;


/*• Exiba somente os dados de cada tabela, mas filtrando por algum dado
da tabela (por exemplo, as pessoas de alguma profissão, etc).*/

select * from Pessoa
where profissao = 'Estagiária';

select * from Gastos
where valor > 100;

/*
• Exiba os dados das pessoas e dos seus gastos correspondentes.*/

select  p.*, g.*
from  pessoa p
join gastos g on p.idPessoa = g.fk_idPessoa;

/*
• Exiba os dados de uma determinada pessoa e dos seus gastos
correspondentes.*/

select  p.*, g.*
from  pessoa p
join gastos g on p.idPessoa = g.fk_idPessoa
where p.idPessoa = 3;

/*
• Atualize valores já inseridos na tabela.*/

update Pessoa
set Profissao = 'Advogado'
where idPessoa = 2;

update Gastos
set fk_idPessoa = 2
WHERE idGastos = 4;

select  p.*, g.*
from  pessoa p
join gastos g on p.idPessoa = g.fk_idPessoa;

/*
• Exclua um ou mais registros de alguma tabela. */

delete from Gastos
where idGastos = 4;

select  p.*, g.*
from  pessoa p
join gastos g on p.idPessoa = g.fk_idPessoa;