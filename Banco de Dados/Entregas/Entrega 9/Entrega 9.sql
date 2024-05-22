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
 
 primary key(idDepto),
 constraint fk_gerente foreign key(fkGerente) references funcionario(idFuncionario)
 );
 
 /*
 Criar a tabela chamada Funcionario para conter os campos: idFunc, nomeFunc (tamanho 30), salario, sexo, fkSupervisor, dataNasc (tipo date), fkDepto.
idFunc é a chave primária da tabela. (NÃO USE AUTO_INCREMENT AQUI)
fkSupervisor é a chave estrangeira para idFunc na mesma tabela. (MELHOR CONFIGURAR ESTA CHAVE ESTRANGEIRA SOMENTE APÓS INSERIR OS DADOS)
 
 */
 
 create table Funcionario  (
 idFunc INT not null, 
 nomeFunc VARCHAR (30) not null, 
 salario INT not null, 
 sexo char(1) not null,
 fkSupervisor INT null, 
 fkDepto INT,
 dataNasc DATE
 
 constraint CHK_Sexo check(sexo in ('m','f' )),
primary key(idFunc),
constraint Supervisor foreign key(fkSupervisor) references funcuonario(idFuncionario),
constraint fk_Depto foreign key(fkDepto) references departamento(idDepto)
 );
 
 create table Projeto (
 idProj int NOT NULL,
 nomeProj VARCHAR(50) not null,
 localProj VARCHAR(30) not null,
 fkDepto int NOT NULL,
 
 primary key(idProj),
 constraint fk_Depto foreign key(fkDepto) references Departamento(idDepto)
 );
 
 create table FuncProj(
 fkFunc INT NOT NULL,
 fkProj INT NOT NULL,
 horas decimal(3,1)
 );
 