create database Sprint2;
use sprint2;
/*1. Fazer a modelagem lógica (DER) de um sistema para um pet shop cadastrar
os pets e seus donos (clientes).
- Cada pet pertence somente a um cliente.
- Cada cliente pode ter mais de um pet cadastrado.
- Sobre cada pet, o sistema guarda um identificador que é 
inicializado com 101 e incrementado de forma automática. Esse identificador é a chave primária que identifica um pet de forma única. 
Além do identificador, o sistema guarda o 
tipo do animal (se é cachorro, gato, etc), 
o nome,
 a raça e
 a data de nascimento do pet.*/
  /*
- Sobre cada cliente, o sistema guarda também um identificador que identifica de
forma única cada cliente. Esse identificador começa a partir de 1 e é incrementado
de forma automática pelo sistema. Além do código, o sistema guarda o
 nome, o
telefone fixo,
 o telefone celular
 e o endereço de cada cliente.*
 Criar um banco de dados Pet no MySQL, selecionar esse banco de dados e
executar as instruções relacionadas a seguir.
- Criar as tabelas equivalentes à modelagem. */
 
 
 create table Cliente
(idCliente INT auto_increment,
nome VARCHAR(45) NOT NULL,
sobrenome VARCHAR(45) NOT NULL,
telefone_fixo VARCHAR(12) ,
telefone_celular VARCHAR(12) NOT NULL,
endereco VARCHAR(50) NOT NULL,

primary key pk_cliente (idCliente)
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
 

/*
- Inserir dados nas tabelas, de forma que exista mais de um tipo de animal diferente,
e que exista algum cliente com mais de um pet cadastrado. Procure inserir pelo
menos 2 clientes diferentes que tenham o mesmo sobrenome.*/

insert into cliente
 (nome, sobrenome, telefone_fixo, telefone_celular, endereco) 
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
- Exibir todos os dados de cada tabela criada, separadamente.*/

select * from cliente;
select * from pet;

/*
- Fazer os acertos da chave estrangeira, caso não tenha feito no momento da
criação.
- Altere o tamanho da coluna nome do cliente.*/

alter table cliente
modify column nome VARCHAR(100);

/*
- Exibir os dados de todos os pets que são de um determinado tipo (por exemplo:
cachorro).*/

select p.*,c.*
from pet as p
join cliente as c on p.fk_idCliente = c.idCliente
where p.tipoAnimal = 'Cachorro';

/*
- Exibir apenas os nomes e as datas de nascimento dos pets.*/

select p.nome, p.dataNascimento
from pet as p;

/*
- Exibir os dados dos pets ordenados em ordem crescente pelo nome.*/

select p.*, c.*
from pet as p
join cliente as c on p.fk_idCliente = c.idCliente
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

select p.*, c.*
from pet as p
join cliente as c on p.fk_idCliente = c.idCliente
order by c.bairro asc;

/*
- Exibir os dados dos pets cujo nome comece com uma determinada letra.*/

select p.*, c.*
from pet as p
join cliente as c on p.fk_idCliente = c.idCliente
where p.nome like 'P%';

/*
- Exibir os dados dos clientes que têm o mesmo sobrenome.*/

select c.*
from cliente as c
where c.sobrenome like 'Rocket';

/*
- Alterar o telefone de um determinado cliente.
- Exibir os dados dos clientes para verificar se alterou.*/

update Cliente set telefone_fixo = 21145623
where idCliente = '3';
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
- Excluir algum pet.*/
delete from pet
where idPet = 107; 
/*
- Exibir os dados dos pets para verificar se excluiu.
- Excluir as tabelas.*/
select * from pet;
drop table pet;
drop table cliente;
/*
2. Fazer a modelagem lógica (DER) de um sistema para armazenar os gastos
individuais das pessoas de sua família.
Crie uma entidade Pessoa, com atributos idPessoa, 
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
nome VARCHAR(50) NOT NULL,
dataNascimento date,
profissao varchar(50) NOT NULL,

primary key(idPessoa)
);

create table Gastos
(idGastos INT auto_increment,
dataGasto date NOT NULL,
valor decimal(5,2) NOT NULL,
descricao varchar(100) NOT NULL,
fk_idPessoa int,

primary key (idGastos),
foreign key (fk_idPessoa) references Pessoa(idPessoa)
);

/*
• Insira dados nas tabelas.*/

insert into Pessoa
(nome, dataNascimento,profissao)
values('Maria', '2000-04-03', 'Estagiário'),
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

select * from pessoa;
select * from gastos;

/*
• Exiba somente os dados de cada tabela, mas filtrando por algum dado da
tabela (por exemplo, as pessoas de alguma profissão, etc).*/

select * from pessoa
where profissao = 'Estagiário';

select * from gastos
where valor > 70.00;

/*
• Exiba os dados das pessoas e dos seus gastos correspondentes.*/

select p.*, g.*
from pessoa as p
join gastos as g on p.idPessoa = g.fk_idPessoa;


/*
• Exiba os dados de uma determinada pessoa e dos seus gastos
correspondentes.*/
select p.*, g.*
from pessoa as p
join gastos as g on p.idPessoa = g.fk_idPessoa
where p.idPessoa = 3;
/*
• Atualize valores já inseridos na tabela.
• Exclua um ou mais registros de alguma tabela.*/
update gastos
set valor = 110.50
where idGastos in (1,2);

delete from gastos
where idGastos in(2,3);

select * from gastos;

/*
3. Fazer a modelagem lógica no MySQL Workbench de um sistema para cadastrar
os setores de uma empresa, os funcionários desses setores e os acompanhantes
desses funcionários para uma festa que a empresa está organizando para celebrar
o fim da pandemia.
- Cada setor pode ter mais de um funcionário.
- Cada funcionário trabalha apenas em um setor.
- Sobre cada setor, 
o sistema guarda um número que identifica de forma única cada
setor. Além desse identificador,
 o sistema guarda o nome do setor e 
 o número do andar do prédio em que fica o setor.
- Sobre cada funcionário, o sistema guarda um identificador que é a chave primária que identifica um funcionário de forma única. 
Além do identificador, 
o sistema guarda o nome do funcionário, 
seu telefone
 e seu salário (que deve ser maior do que zero, ou seja, o sistema não pode aceitar valores negativos ou iguais a zero.
- A empresa está organizando uma festa para celebrar o final da pandemia de Covid. Nessa festa, cada funcionário poderá trazer zero ou mais acompanhantes. Cada acompanhante só poderá estar relacionado a um funcionário.
- Sobre cada acompanhante, o sistema guarda um identificador que forma uma
chave primária composta, 
juntamente com a identificação do funcionário que o
convidou para a festa. Além disso, o sistema guarda o
nome, 
o tipo de relação que o acompanhante tem com o funcionário e a
data de nascimento do acompanhante.
Escrever os comandos do MySQL para:
- Criar um banco de dados chamado PraticaFuncionario.
- Selecionar esse banco de dados.
- Criar as tabelas correspondentes à sua modelagem.*/

create database PraticaFuncionario;
use PraticaFuncionario;

create table Setor(
idSetor INT auto_increment,
nome varchar(45) not null,
numero_andar INT not null,

primary key pk_idSensor (idSetor)
);

create table Funcionario( 
idFuncionario INT auto_increment,
nome varchar(45) not null,
sobrenome varchar(45) not null,
telefone varchar(12) not null,
salario decimal(10,2) check (salario>0),
fk_idSetor INT,

primary key pk_idFuncionario (idFuncionario),
foreign key fk_idSetor (fk_idSetor) references Setor(idSetor)
)auto_increment = 1;


create table acompanhante(
idAcompanhante INT auto_increment,
idFuncionario INT,
nome varchar(45) not null,
sobrenome varchar(45) not null,
tipo_relacionamento varchar(45) not null,
dataNascimento date not null,

primary key (idAcompanhante, idFuncionario),
foreign key fk_idFuncionario (idFuncionario) references Funcionario(idFuncionario)
);

/*
- Inserir dados nas tabelas, de forma que exista mais de um funcionário em cada
setor cadastrado.*/

insert into Setor
(nome, numero_andar)
values ('RH', 5),
	    ('e-commerce', 4),
        ('SAC', 8);
        
        
insert into funcionario
(nome, sobrenome, telefone, salario, fk_idSetor)
values ('Pedro', 'Rambo', '123456789', '2500', 2),
	   ('Nathalia', 'Pericles', '123456788', '3200', 1),
       ('Ítala', 'Nascimento', '123456722', '2000', 2),
       ('Thiago', 'Nascimento', '123456780', '1600', 3);

       
insert into acompanhante
(idFuncionario, nome, sobrenome, tipo_relacionamento, dataNascimento)
values  (2, 'Marcelo', 'Pericles', 'Cônjugue', '1999-11-11'),
		(3, 'Rafael', 'Nascimento', 'Cônjugue', '1994-04-04'),
		(3, 'Nashila', 'Nascimento', 'Filha', '2022-02-01'),
		(4, 'Jordão', 'Nascimento', 'Amigo', '2000-12-31'),
		(1, 'Naruto', 'Silva', 'Amigo', '2003-06-12');
/*
- Exibir todos os dados de cada tabela criada, separadamente.
- Fazer os acertos da chave estrangeira, caso não tenha feito no momento da
criação.*/

select * from Setor;
select * from Funcionario;
select * from acompanhante;


/*
- Exibir os dados dos setores e dos seus respectivos funcionários.*/

select s.*, f.*
from setor as s
join funcionario as f on f.fk_idSetor = s.idSetor;

/*
- Exibir os dados de um determinado setor (informar o nome do setor na
consulta) e dos seus respectivos funcionários.*/
select s.*, f.*
from setor as s
join funcionario as f on f.fk_idSetor = s.idSetor
where s.nome = 'e-commerce';
/*
- Exibir os dados dos funcionários e de seus acompanhantes.*/

select f.*, a.*
from funcionario as f
join acompanhante as a on a.idFuncionario = f.idFuncionario;

/*
- Exibir os dados de apenas um funcionário (informar o nome do funcionário) e
os dados de seus acompanhantes.*/

select f.*, a.*
from funcionario as f
join acompanhante as a on a.idFuncionario = f.idFuncionario
where f.nome = 'Ítala';

/*
- Exibir os dados dos funcionários, dos setores em que trabalham e dos seus
acompanhantes.*/
select  f.*,s.*, a.*
from funcionario as f
join acompanhante as a on a.idFuncionario = f.idFuncionario
join setor as s on s.idSetor = f.fk_idSetor;


/*
4. Fazer a modelagem lógica de um sistema para cadastrar os treinadores de
nadadores, que participarão de vários campeonatos, representando o Brasil.
- Cada treinador treina mais de um nadador.
- Cada nadador tem apenas um treinador.
- Sobre cada nadador, o sistema guarda um identificador, que identifica de forma única cada um deles. Esse identificador começa com o valor 100 e é inserido de forma automática. 
Além desse identificador, o sistema guarda o nome, o estado de origem e 
a data de nascimento do nadador.
- Sobre cada treinador, o sistema guarda um identificador, que identifica de forma única cada treinador. Esse identificador começa com o valor 10 e é inserido de forma automática. 
O sistema também guarda o nome do treinador,
 o telefone (apenas um número de telefone) 
 e o e-mail do treinador.
- Um treinador mais experiente orienta outros treinadores novatos. Cada treinador
novato é orientado apenas por um treinador.
Escrever os comandos do MySQL para:
a) Criar um banco de dados chamado Treinador.
b) Selecionar esse banco de dados.
c) Criar as tabelas correspondentes à sua modelagem.*/
create database Treinador;
use Treinador;

create table Treinador
(idTreinador INT auto_increment,
nome varchar(45),
sobrenome varchar(45),
telefone varchar(12),
email varchar(45),

primary key pk_idTreinador (idTreinador)
)auto_increment=10;


create table Nadador
(idNadador INT auto_increment,
nome VARCHAR(45) not null,
sobrenome VARCHAR(45) not null,
estado_origem varchar(45),
dataNascimento date,
idTreinador INT,

primary key pk_idNadador (idNadador),
foreign key fk_idTreinador (idTreinador) references Treinador (idTreinador)
)auto_increment=100 ;

create table Orientacao
(idTreinadorNovato INT,
idTreinadorExperiente INT,

primary key pk_Orientacao (idTreinadorNovato),
foreign key fk_treinadorNovato (idTreinadorNovato) references Treinador(idTreinador),
foreign key fk_treinadorExperiente (idTreinadorExperiente) references Treinador (idTreinador)
);

/*
d) Inserir dados nas tabelas, de forma que exista mais de um nadador para algum
treinador, e mais de um treinador sendo orientado por algum treinador mais
experiente.*/
insert into Treinador
 (nome, sobrenome, telefone, email) 
 values ('Felipe', 'Cho', '123456789', 'felipe.cho@email.com'),
		('Josef', 'Kong', '987654321', 'josef.kong@email.com'),
		('Crystal', 'Xu', '111222333', 'crystal.xu@email.com');
        
insert into Nadador
(nome, sobrenome, estado_origem, dataNascimento, idTreinador)
values  ('Fernando', 'Pereira', 'São Paulo', '1990-05-15', 10),
		('Ítala', 'Nascimento', 'Belém', '1995-09-20', 12),
		('Pedro', 'José', 'Minas Gerais', '2000-03-10', 11),
        ('Rafaela', 'Nadal', 'Fortaleza', '2004-06-07', 10);
        
insert into Orientacao 
(idTreinadorNovato, idTreinadorExperiente) 
values  (12, 10),
		(11, 10);

/*
e) Exibir todos os dados de cada tabela criada, separadamente.
f) Fazer os acertos da chave estrangeira, caso não tenha feito no momento da criação
das tabelas.*/

select * from Treinador;
select * from Nadador;
select * from orientacao;

/*
g) Exibir os dados dos treinadores e os dados de seus respectivos nadadores.*/

select t.*, n.*
from treinador as t
join nadador as n on n.idTreinador = t.idTreinador;

/*
h) Exibir os dados de um determinado treinador (informar o nome do treinador na
consulta) e os dados de seus respectivos nadadores.*/
select t.*, n.*
from treinador as t
join nadador as n on n.idTreinador = t.idTreinador
where t.nome = 'Felipe';

/*
i) Exibir os dados dos treinadores e os dados dos respectivos treinadores
orientadores.*/

select concat(t1.nome , ' ', t1.sobrenome) as 'Treinador Novato', t1.Telefone, t1.email, concat(t2.nome , ' ', t2.sobrenome) as 'Treinador Experiente', t2.telefone, t2.email
from Treinador as t1
join Orientacao o on t1.idTreinador = o.idTreinadorNovato
join Treinador as t2 on o.idTreinadorExperiente = t2.idTreinador;

/*
j) Exibir os dados dos treinadores e os dados dos respectivos treinadores
orientadores, porém somente de um determinado treinador orientador (informar o
nome do treinador na consulta).*/
select concat(t2.nome , ' ', t2.sobrenome) as 'Treinador Experiente', t2.telefone, t2.email, concat(t1.nome , ' ', t1.sobrenome) as 'Treinador Novato', t1.Telefone, t1.email
from Treinador as t1
join Orientacao o on t1.idTreinador = o.idTreinadorNovato
join Treinador as t2 on o.idTreinadorExperiente = t2.idTreinador
where t2.nome = 'Felipe';

/*
l) Exibir os dados dos treinadores, os dados dos respectivos nadadores e os dados
dos respectivos treinadores orientadores.*/

select t1.*, n.*, o.*
from treinador as t1
join nadador as n on n.idTreinador = t1.idTreinador
join Orientacao as o on t1.idTreinador = o.idTreinadorNovato
join Treinador as t2 on o.idTreinadorExperiente = t2.idTreinador;

/*
m) Exibir os dados de um treinador (informar o seu nome na consulta), os dados dos
respectivos nadadores e os dados do seu treinador orientador.*/
select t2.*, n.*, concat(t2.nome , ' ', t2.sobrenome) as 'Orientador', concat(t1.nome , ' ', t1.sobrenome) as 'Orientado'
from treinador as t1
join nadador as n on n.idTreinador = t1.idTreinador
join Orientacao as o on t1.idTreinador = o.idTreinadorNovato
join Treinador as t2 on o.idTreinadorExperiente = t2.idTreinador
where t2.nome = 'Felipe';

/*
5. [DESAFIO] Fazer a modelagem lógica (DER) de um sistema para UMA clínica
médica. Supor que a clínica tem vários médicos e vários pacientes, sendo que cada
paciente pode ser atendido por mais de um médico da clínica. E cada médico,
obviamente, pode atender mais de um paciente.
Sobre o paciente, o sistema guarda um identificador, o nome, o número do telefone
(que pode ser mais de um) e o endereço.
Sobre o médico, o sistema guarda o número de CRM (Conselho Regional de
Medicina), que é usado como identificador do médico, o nome do médico, a
especialidade do médico (que pode ser mais de uma) e o número de telefone do
médico (que pode ser mais de um).
É importante também guardar a informação da data e horário de cada consulta
realizada.
Atenção: Não precisa ter a entidade clinica, porque não vamos armazenar dados
de várias clínicas, apenas de uma!
Não precisa implementar no MySQL.*/