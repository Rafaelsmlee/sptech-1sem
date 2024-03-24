-- primeiros comandos - continuação
-- criar database
-- Etapa 1
create database sprint1;
-- colocar o database em uso
-- Etapa 2
use sprint1;
/*
criar a tabela de empresa 
onde o auto increment inicie a partir de 100
*/
-- Etapa 3
CREATE TABLE empresa (    
     id              INT auto_increment,    
     nome            VARCHAR(40),
     representante   varchar(40),
     primary key chave(id)
) auto_increment=100;  -- parametro opcional, se não informado inicia em 1
-- inserir dados na tabela empresa
-- Etapa 4
insert into empresa (nome, representante) 
values ('Tivit', 'João'),
	   ('Accenture', 'José'),
	   ('Rappi', 'Marta'),
	   ('Raizen', 'Maria Alice'),
	   ('C6 Bank', 'Mariana'),
	   ('Banco Safra', 'Sandra'),
	   ('Deloitte', 'Giovanni'),
	   ('Elera', 'Vera'),
	   ('Sptech', 'Alessandro');
-- verificar os dados da tabela
-- Etapa 5
select * from empresa; 
-- truncar todos os registros da tabela empresa
-- Etapa 6
truncate table empresa; 
-- Etapa 7
select * from empresa; 
-- Etapa 4
/*
inserir todas as empresas novamente
utilize os dados inseridos inicialmente
verificar os dados da tabela
*/
-- Etapa 5
select * from empresa;      
/*
OBSERVAÇÃO : Notem que o ID iniciou do 1 ao invés do 100
toda vez que a tabela passa por um Truncate o auto_increment
passa a assumir o valor inicial como sendo 1
*/
-- truncar a tabela novamente
-- Etapa 6
truncate table empresa; 
/*
para posicionar o auto_increment novamente em 100
executar o alter table
*/
-- Etapa 7
ALTER TABLE empresa AUTO_INCREMENT = 100;
-- inserir os dados novamente com o script de insert acima
-- Etapa 4
-- verificar os dados da tabela
select * from empresa;  
/*
agora após o alter table o auto_increment voltou a iniciar do 100
incluir uma nova coluna na tabela empresa
*/
alter table empresa add column email_representante char(20),
                    add column email_empresa char(20);
-- verifique a estrutura da tabela
desc empresa;
-- verifique os dados
select * from empresa;
desc empresa;

alter table empresa  modify column email_representante varchar(200);
-- alterar a coluna
alter table empresa modify column email_representante varchar(200);
alter table empresa modify column email_empresa varchar(200);
-- alterar o nome de uma coluna
alter table empresa rename column email_empresa TO empresa_email;
-- apagar uma coluna da tabela
alter table empresa drop column empresa_email;
--
update empresa 
set representante = 'Marcello', 
    email_representante = 'marcello@tivit.com' 
where id = 100;
--
update empresa 
set email_representante = 'Marcelo'
where nome = 'tivit';
-- 
select * from empresa;
-- delete
delete from empresa where id = 100;


--
insert into empresa(id, nome, representante, email_representante)
values (100, 'Tivit', 'Marcelo', 'marcelo@tivit.com');
-- select 
select * from empresa;
-- atualizar os email de uma unica vez
update empresa 
set email_representante = concat(representante,'@',nome,'.com')
where id >= 100;

select * from empresa;

update empresa
	set email_representante = (replace(email_representante," ",""),(email_representante,"é","e"));


--
select id, nome, representante, email_representante
from empresa;   
-- função concat

select id, 
       concat('A empresa ',nome, ' é representada pelo(a) ',representante) 
from empresa;
-- Alias ou Apelido de coluna
select id 'identificador do registro', 
       concat('A empresa ',nome, ' é representada pelo(a) ',representante),
       concat('A empresa ',nome, ' é representada pelo(a) ',representante) AS empresa_repr,        
       concat('A empresa ',nome, ' é representada pelo(a) ',representante) AS 'Empresa e Representante'        
from empresa AS emp;
-- comando drop table, este comando elimina a tabela
drop table empresa;    
-- dropar o database
drop database sprint1;       
--