/*Fazer a modelagem lógica de um sistema para cadastrar os alunos da 
faculdade, seus projetos e seus acompanhantes que eles poderão 
trazer no dia da apresentação final do projeto. - Cada aluno participa apenas de um projeto. -
 Cada projeto pode ter a participação de um ou mais alunos. -
 Cada aluno pode trazer zero ou mais acompanhantes. -
Há alguns alunos que atuam como representantes de outros alunos. 
Qualquer problema ou queixa que os alunos tiverem, devem falar com o 
aluno que os representa. O aluno representante, por sua vez, reporta os 
problemas/queixas à equipe de socioemocional. - Cada aluno é representado apenas por um aluno. 
- Sobre os alunos, o sistema guarda o ra (chave primária),
 nome, 
 telefone.
 - Sobre os projetos, 
 o sistema guarda um identificador (chave primária), 
nome e
 a descrição do projeto.
 - Sobre os acompanhantes, 
 o sistema guarda um identificador,
 nome e o 
tipo de relação com o aluno (se é pai, amigo, irmão, namorado, etc). 
Criar um banco de dados AlunoProjeto no MySQL, selecionar esse 
banco de dados e executar as instruções relacionadas a seguir. 
- Criar as tabelas equivalentes à modelagem.  
- Inserir dados nas tabelas. 
*/

create database AlunoProjeto;
use AlunoProjeto;

create table Projeto
(idProjeto INT auto_increment,
nome VARCHAR(45) not null,
descricao VARCHAR(100) not null,

primary key (idProjeto)
);

create table Aluno
(RA INT auto_increment,
Nome VARCHAR(45) not null,
Sobrenome VARCHAR(45) not null,
telefone VARCHAR(13) not null,
fk_representante INT null,
fk_projeto INT,

primary key(RA),
constraint chck_fk_representante foreign key (fk_representante) references Aluno(RA),
constraint chck_fk_projeto foreign key (fk_projeto) references Projeto(idProjeto)
);

create table Acompanhantes
(idRepresentante INT auto_increment,
nome VARCHAR(45) not null,
sobrenome VARCHAR(45) not null,
relacao varchar(45) not null,
fk_aluno INT null,

primary key(idRepresentante),
constraint chck_fk_aluno foreign key(fk_aluno) references Aluno(RA)
);

insert into Projeto
(Nome, descricao)
values('Sistema de Gestão Escolar', 'Desenvolvimento de um sistema para gestão acadêmica'),
('Aplicativo de Gerenciamento Financeiro', 'Desenvolvimento de um aplicativo para controle financeiro pessoal'),
('Plataforma de E-commerce', 'Desenvolvimento de uma plataforma de comércio eletrônico'),
('Aplicativo de Saúde e Bem-Estar', 'Desenvolvimento de um aplicativo para monitoramento de saúde e bem-estar');
;

insert into Aluno
(Nome, Sobrenome, Telefone, fk_representante, fk_projeto)
values('Aline', 'Marques', '111111111', null, 2),
	  ('Beatriz', 'Souza', '111111112', null, 1),
      ('Celo', 'Pianta', '111111113', 1, 2),
      ('David', 'Brasil', '111111114', 1, 4),
      ('Victoria', 'Hernes', '111111115', 2, 3),
      ('Zelda', 'Link', '111111116', 2, 3);
      
insert into Acompanhantes
(Nome, Sobrenome, Relacao, fk_aluno)
values  ('Amanda', 'Piza', 'Amiga', 1),
		('Giovanna', 'Iutão', 'Filha', 3),
        ('Pedro', 'Hernes', 'Cônjugue', 5),
        ('Ash', 'Ketchum', 'Namorado', 6);



/*- Exibir todos os dados de cada tabela criada, separadamente. */

select * from Projeto;
select * from Aluno;
select * from Acompanhantes;

/*
- Fazer os acertos da chave estrangeira, caso não tenha feito no momento 
da criação. 
- Exibir os dados dos alunos e dos projetos correspondentes. */

select 
aluno.ra as 'RA Aluno',
concat (aluno.nome, ' ', aluno.sobrenome) as 'Nome do Aluno',
aluno.telefone, 
proj.nome as 'Nome do Projeto',
rep.ra as 'RA do Representante',
concat (rep.nome, ' ', rep.sobrenome) as 'Representante do aluno',
rep.telefone
from aluno 
left join Aluno AS rep  ON Aluno.fk_representante = rep.RA
inner join Projeto as proj ON Aluno.fk_projeto = proj.idProjeto
order by aluno.ra asc;


/*
- Exibir os dados dos alunos e dos seus acompanhantes.*/

select
aluno.ra as 'RA do Aluno',
concat (aluno.nome, ' ', aluno.sobrenome) as 'Nome do aluno',
aluno.telefone, 
concat (acomp.nome, ' ', acomp.sobrenome) as 'Nome do acompanhante',
acomp.relacao as 'Relação com o aluno',
concat (rep.nome, ' ', rep.sobrenome) as 'Representante do aluno',
rep.telefone
FROM
    Aluno
left join Aluno as rep on aluno.fk_representante = rep.RA
left join Acompanhantes as acomp on aluno.RA = acomp.fk_aluno;

/*
 - Exibir os dados dos alunos e dos seus representantes. */
 
 

 select
 *
 from aluno as rep
 left join Aluno 
 on rep.fk_representante = aluno.RA;
 
 /*
 - Exibir os dados dos alunos e dos projetos correspondentes, mas somente 
de um determinado projeto (indicar o nome do projeto na consulta). */

select 
aluno.ra as 'RA Aluno',
concat (aluno.nome, ' ', aluno.sobrenome) as 'Nome do aluno',
aluno.telefone,
proj.nome as 'Nome do projeto',
proj.descricao as 'Descricao do projeto',
concat (rep.nome, ' ', rep.sobrenome) as 'Representante do aluno'
from aluno
left join aluno as rep on rep.fk_representante = aluno.RA 
join projeto as proj on aluno.fk_projeto = proj.idProjeto
order by aluno.RA asc;


/*
- Exibir os dados dos alunos, dos projetos correspondentes e dos seus 
acompanhantes. */

select
aluno.ra as 'RA Aluno',
concat (aluno.nome, ' ', aluno.sobrenome) as 'Nome do aluno',
aluno.telefone, 
concat (acomp.nome, ' ', acomp.sobrenome) as 'Nome do acompanhante',
acomp.relacao as 'Relação com o aluno',
concat (rep.nome, ' ', rep.sobrenome) as 'Representante do aluno',
rep.telefone
FROM
    Aluno
left join Aluno as rep on aluno.fk_representante = rep.RA
left join Acompanhantes as acomp on aluno.RA = acomp.fk_aluno
order by acomp.nome asc;

drop database Aluno;
/*
2. Fazer a modelagem lógica de um sistema para cadastrar as campanhas de 
doações que surgiram devido ao Covid-19 e os organizadores dessas 
campanhas - Cada organizador organiza mais de uma campanha de doação. - Cada campanha de doação é organizada por apenas um organizador. - Sobre cada organizador, o sistema guarda um identificador, que identifica de 
forma única cada organizador. Esse identificador começa com o valor 30 e é 
inserido de forma automática. Além desse identificador, o sistema guarda o 
nome, o endereço (composto pelo nome da rua e bairro) e o e-mail do 
organizador. 
- Sobre cada campanha de doação, o sistema guarda um identificador, que 
identifica de forma única cada campanha. Esse identificador começa com o valor 
500 e é inserido de forma automática. O sistema também guarda a categoria da 
doação (ex: alimento ou produto de higiene, ou máscaras de proteção, etc), a 
instituição para a qual será feita a doação (pode haver até 2 instituições) e a data 
final da campanha. - Um organizador mais experiente orienta outros organizadores novatos. Cada 
organizador novato é orientado apenas por um organizador mais experiente. 
Escrever os comandos do MySQL para: 
a) Criar um banco de dados chamado Campanha. 
b) Selecionar esse banco de dados. 
c) Criar as tabelas correspondentes à sua modelagem.*/
create database Campanha;
use Campanha;

create table Organizador
(idOrganizador INT auto_increment,
nome VARCHAR(45) not null,
sobrenome VARCHAR(45) not null,
email VARCHAR(100) not null,
endereco VARCHAR(100) not null,
fk_orgExperiente INT null,

primary key (idOrganizador),
constraint chck_fk_orgExperiente foreign key (fk_orgExperiente) references Organizador(idOrganizador)
)auto_increment = 30;

create table Campanha
(idCampanha INT auto_increment,
doacao VARCHAR(45) not null,
instituto_um VARCHAR(45) not null,
instituto_dois VARCHAR(45) null,
data date,
fk_idOrganizador INT,

primary key(idCampanha),
constraint chck_fk_Organizador foreign key(fk_idOrganizador) references Organizador(idOrganizador)
)auto_increment = 500;


/* 
d) Inserir dados nas tabelas, de forma que exista mais de uma campanha para 
algum organizador, e mais de um organizador novato sendo orientado por algum 
organizador mais experiente. 
e) Exibir todos os dados de cada tabela criada, separadamente.
f) Fazer os acertos da chave estrangeira, caso não tenha feito no momento da 
criação das tabelas.  */
insert into Organizador
 (nome, sobrenome, email, endereco, fk_orgExperiente ) 
 values ('João', 'Silva', 'joao@example.com', 'Rua Abra - Bairro Indigo' , null),
		('Maria', 'Oliveira', 'maria@example.com','Rua Kadabra  - Bairro Pewter', 30),
        ('Daniel', 'Pereira', 'daniel@example.com','Rua Alakazam - Bairro Cerulean', 30);

-- Inserindo dados das campanhas de doação
INSERT INTO Campanha (doacao, instituto_um, instituto_dois, data, fk_idOrganizador) VALUES
('Alimentos', 'Instituto A', null , '2024-05-31', 30),
('Roupas', 'Instituto A','Instituto B' , '2024-06-15', 30),
('Produtos de Higiene', 'Instituto C', null ,  '2024-06-30', 31),
('Roupas', 'Instituto B','Instituto c' , '2024-06-14', 32);

select * from Organizador;
select * from Campanha;


/*
g) Exibir os dados dos organizadores e os dados de suas respectivas 
campanhas. */

select * 
from organizador as org
join campanha as camp on org.idOrganizador = camp.fk_idOrganizador;

/*
h) Exibir os dados de um determinado organizador (informar o nome do 
organizador na consulta) e os dados de suas respectivas campanhas. */

select * 
from organizador as org
join campanha as camp on org.idOrganizador = camp.fk_idOrganizador
where org.nome = 'João';

/*
i) Exibir os dados dos organizadores novatos e os dados dos respectivos 
organizadores orientadores. */

select novato.idOrganizador,
concat(novato.nome, '', novato.sobrenome) as 'Organizador novato',
novato.email as 'E-mail Organizador novato',
novato.endereco as 'Endereço do Organizador novato',
concat(expert.nome, '', expert.sobrenome) as 'Organizador expert',
expert.email as 'E-mail do Organizador expert',
expert.endereco as 'Endereco do Organizador expert'
from organizador as novato
join organizador as expert on novato.fk_orgExperiente = expert.idOrganizador;

/*
j) Exibir os dados dos organizadores novatos e os dados dos respectivos 
organizadores orientadores, porém somente de um determinado organizador 
orientador (informar o nome do organizador orientador na consulta). */

select novato.idOrganizador,
concat(novato.nome, '', novato.sobrenome) as 'Organizador novato',
novato.email as 'E-mail Organizador novato',
novato.endereco as 'Endereço do Organizador novato',
concat(expert.nome, '', expert.sobrenome) as 'Organizador expert',
expert.email as 'E-mail do Organizador expert',
expert.endereco as 'Endereco do Organizador expert'
from organizador as novato
join organizador as expert on novato.fk_orgExperiente = expert.idOrganizador
order by expert.nome = 'João';


/*
l) Exibir os dados dos organizadores novatos, os dados das respectivas 
campanhas organizadas e os dados dos respectivos organizadores 
orientadores. */

select novato.idOrganizador,
concat(novato.nome, ' ', novato.sobrenome) as 'Organizador novato',
novato.email as 'E-mail Organizador novato',
novato.endereco as 'Endereço do Organizador novato',
camp.doacao as 'Doação',
camp.instituto_um as 'Primeiro instituto',
camp.instituto_dois as 'Segundo instituto',
data as 'Data da doação',
concat(expert.nome, ' ', expert.sobrenome) as 'Organizador expert',
expert.email as 'E-mail do Organizador expert',
expert.endereco as 'Endereco do Organizador expert'
from organizador as novato
join organizador as expert on novato.fk_orgExperiente = expert.idOrganizador
join campanha as camp on expert.idOrganizador = camp.fk_idOrganizador;


/*
m) Exibir os dados de um organizador novato (informar o seu nome na consulta), 
os dados das respectivas campanhas em que trabalha e os dados do seu 
organizador orientador.*/

select novato.idOrganizador,
concat(novato.nome, ' ', novato.sobrenome) as 'Organizador novato',
novato.email as 'E-mail Organizador novato',
novato.endereco as 'Endereço do Organizador novato',
camp.doacao as 'Doação',
camp.instituto_um as 'Primeiro instituto',
camp.instituto_dois as 'Segundo instituto',
data as 'Data da doação',
concat(expert.nome, ' ', expert.sobrenome) as 'Organizador expert',
expert.email as 'E-mail do Organizador expert',
expert.endereco as 'Endereco do Organizador expert'
from organizador as novato
join organizador as expert on novato.fk_orgExperiente = expert.idOrganizador
join campanha as camp on expert.idOrganizador = camp.fk_idOrganizador
where novato.nome = 'Maria';