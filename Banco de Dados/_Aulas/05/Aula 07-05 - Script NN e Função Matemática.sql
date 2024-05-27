-- Introdução relacionamento n:n

CREATE DATABASE clinica;  
USE clinica;
-- criando a tabela paciente
CREATE TABLE paciente (
	idPaciente int auto_increment,
	nome varchar(45),
	primary key (idPaciente)
);
--
INSERT INTO paciente(nome) VALUES
	('Julia'),
	('Jhulia com H'),
	('Jeremias');
--
CREATE TABLE medico (
	idMedico int auto_increment,
	nome varchar(45),
	especialidade varchar(45),
	salario decimal(10,2),
    primary key (idMedico),
	constraint chkSalario check (salario >=0)
) auto_increment = 1000;

INSERT INTO medico VALUES
	(null, 'Julio', 'pediatra',100.99),
	(null, 'Zapatta', 'ortopedista',1.99);
-- 
CREATE TABLE consulta (
	fkMedico int,
	fkPaciente int,
	idConsulta int,    
	dtConsulta datetime default current_timestamp,
	constraint pkAssociativa primary key(idConsulta, fkPaciente,fkMedico),
	constraint fkPacienteConsulta foreign key (fkPaciente)
		references paciente(idPaciente),
	constraint fkMedicoConsulta foreign key (fkMedico)
		references medico(idMedico)
);
--
-- tabela associativa - consulta

SELECT * FROM paciente;
SELECT * FROM medico;

INSERT INTO consulta(fkMedico, fkPaciente, idConsulta, dtConsulta)
VALUES (1000, 1, 1, default),
       (1000, 1, 2, default),
       (1000, 2, 1, default),
       (1001, 1, 1, default),
       (1001, 2, 1, default);
--
CREATE TABLE endereco (
	idEnd int auto_increment,
	cep char(9) unique,
	bairro varchar(45),
	cidade varchar(45),
	estado char(2),
    primary key (idEnd)
) auto_increment = 5000;
--
INSERT INTO endereco(cep, bairro, cidade, estado) 
VALUES ('01414-905','Cerqueira Cesar','São Paulo', 'SP'),
	   ('04253-000','Sacomã','São Paulo', 'SP');
--
CREATE TABLE enderecoPaciente (
	fkPaciente int,
	fkEnd int,
	numEnd varchar(45),
	complemento varchar(45),
	tipo varchar(45),
	constraint pkComposta primary key (fkEnd, fkPaciente),
	constraint fkPacienteEnd foreign key (fkPaciente) references paciente(idPaciente),
	constraint fkEnd foreign key (fkEnd) references endereco(idEnd)
);

SELECT * FROM paciente;
SELECT * FROM endereco;


INSERT INTO enderecoPaciente(fkPaciente, fkEnd, numEnd, complemento, tipo) 
VALUES (1, 5000,'595','4º andar', 'apartamento'),
	(1, 5001,'1500','10º andar', 'apartamento'),
	(2, 5000,'595','6º andar', 'apartamento'),
	(2, 5001,'762','próximo ao mercado ABC', 'casa');
--
select * from enderecoPaciente;
--    listar todas as consultas, pacientes e medicos
SELECT * 
FROM paciente pa
INNER JOIN consulta co ON pa.idPaciente = co.fkPaciente
INNER JOIN medico me ON me.idMedico = co.fkMedico;
--
SELECT pa.nome AS Paciente,
       me.nome AS Medico
FROM paciente pa
JOIN consulta co ON pa.idPaciente = co.fkPaciente
JOIN medico me ON me.idMedico = co.fkMedico;
--
SELECT pa.nome AS Paciente,
       me.nome AS Medico
FROM paciente pa
LEFT JOIN consulta co ON pa.idPaciente = co.fkPaciente
LEFT JOIN medico me ON me.idMedico = co.fkMedico
WHERE co.fkMedico is null;
--
SELECT * 
FROM paciente pa
JOIN enderecoPaciente ep ON pa.idPaciente = ep.fkPaciente
JOIN endereco en ON en.idEnd = ep.fkEnd;
-- Funções Matemática

-- Contagem
-- Quantidade de médicos cadastrados
select count(*) from medico;
-- Quantidade de consultas por médico
select fkmedico, count(*)
from consulta
group by fkmedico;
-- quantidade de consultas por medico exibindo o nome do medico
select me.nome, count(*)
from consulta co
inner join medico me on me.idmedico = co.fkmedico
group by me.nome;
-- soma
-- some dos salarios dos médicos
SELECT sum(salario) FROM medico;
-- cadastrar mais um medico 
INSERT INTO medico VALUES
	(null, 'Carolina', 'Clinica Geral',300.99);
-- listar a soma dos salarios dos medicos de ID 1000 e 1003
SELECT sum(salario) FROM medico WHERE idMedico in (1000,1003);

-- SOMA DOS VALORES DIFERENTES
-- inserir um medico q tenha o mesmo salario de outro ja existente
INSERT INTO medico VALUES
	(null, 'Juliana', 'Otorino',300.99);

SELECT sum(DISTINCT salario) as SOMA FROM medico;

-- média
SELECT avg(salario) FROM medico;

-- maximo
SELECT MAX(salario) FROM medico;

-- minimo
SELECT MIN(salario) FROM medico;

-- MAIOR E MENOS SALARIO
SELECT max(salario), min(salario) FROM medico;

--
SELECT SUM(salario) Soma1000e1003,
(SELECT salario FROM medico WHERE idMedico = 1000) as Medico1000,
(SELECT salario FROM medico WHERE idMedico = 1003) as Medico1003 
FROM medico WHERE idMedico in (1000,1003);


