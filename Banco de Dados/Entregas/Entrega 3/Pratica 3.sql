/*1. No MySQL Workbench:
Crie um banco de dados chamado Sprint2;
Use o banco de dados Sprint2;
Escreva e execute os comandos para:
• Criar a tabela chamada Atleta para conter os dados: idAtleta (int e chave primária da
tabela), nome (varchar, tamanho 40), modalidade (varchar, tamanho 40),
qtdMedalha (int, representando a quantidade de medalhas que o atleta possui)*/
create database Sprint2;
use Sprint2;

create table Atleta 
(idAtleta INT,
nome VARCHAR(40) NOT NULL,
modalidade VARCHAR(40) NOT NULL,
qtdMedalha INT NOT NULL,

primary key (idAtleta)
);

/*
• Inserir dados na tabela, procurando colocar mais de um atleta para cada modalidade
e pelo menos 5 atletas.*/

insert into Atleta
(idAtleta, nome, modalidade, qtdMedalha)
values (1,'Raissa', 'Natação', 2 ),
	   (2, 'Pedro', 'Futebol', 3),
       (3, 'Ananda', 'Natação', 2),
       (4, 'Rayane', 'Judo', 0),
       (5, 'Welber', 'Basquete', 1);

/*
• Criar uma tabela chamada País para conter os dados: idPais (int e chave primária da
tabela), nome (varchar, tamanho 30), capital (varchar, tamanho 40);*/

create table Pais
(idPais INT,
nome VARCHAR(30),
capital VARCHAR(40),

primary key(idPais)
);

/*• Inserir pelo menos 4 países na tabela país.
Fazer a modelagem lógica e implementar o modelo físico conforme a regra de negócio:
• 1 país tem 1 ou muitos atletas;
• 1 atleta é de 1 e somente 1 país;*/
insert into Pais
(idPais, nome, capital)
values 
( 1 ,'Canada', 'Ottawa') ,
(2, 'Brazil', 'Brasilia'),
(3 , 'South Korea', 'Seoul'),
(4, 'Russia', 'Moscow');


/*Escreva e execute os comandos para:
• Criar a chave estrangeira na tabela correspondente conforme modelagem;
• Atualizar o país de todos os atletas;*/

alter table Atleta  add fk_pais INT;
alter table Atleta 
add foreign key (fk_pais) references pais(idPais);

update Atleta
set fk_pais = 1
where idAtleta = 1;

update Atleta
set fk_pais = 4
where idAtleta = 2;

update Atleta
set fk_pais = 2
where idAtleta = 3;

update Atleta
set fk_pais = 1
where idAtleta = 4;

update Atleta
set fk_pais = 3
where idAtleta = 5;

/*
• Exibir os atletas e seu respectivo país;*/

select * 
from Atleta  JOIN Pais 
on idPais = fk_pais;

/*• Exibir apenas o nome do atleta e o nome do respectivo país;*/

select a.nome as Atletas, p.nome as País 
from atleta as a 
join pais as p on a.fk_pais = p.idPais;


/*• Exibir os dados dos atletas, seus respectivos países, de uma determinada capital;*/ 

select * 
from atleta as a 
join pais as p on a.fk_pais = p.idPais
where p.capital = 'Ottawa';

/*2. No MySQL Workbench, utilizando o banco de dados ‘sprint2’:
• Criar a tabela chamada Musica para conter os dados: idMusica, titulo (tamanho 40),
artista (tamanho 40), genero (tamanho 40), sendo que idMusica é a chave primária da
tabela.*/

create table Musica
(idMusica INT,
titulo VARCHAR(40) NOT NULL,
artista VARCHAR(40) NOT NULL,
genero VARCHAR(40) NOT NULL,

primary key (idMusica)
);

/*• Inserir dados na tabela, procurando colocar um gênero de música que tenha mais de
uma música, e um artista, que tenha mais de uma música cadastrada. Procure inserir
pelo menos umas 3 músicas.*/

insert into Musica (idMusica, titulo, artista, genero)
values(1, 'My Heart', 'Paramore', 'Pop' ),
	  (2, 'Remember the Name', 'Fort Mirror', 'Rap'),
      (3, 'Pressure', 'Paramore', 'Pop');


/*• Criar a tabela chamada Album para conter os dados: idAlbum, nome, tipo (digital ou
físico) e dtLancamento (DATE).
• Inserir pelo menos 2 albuns;
• Fazer a modelagem lógica e implementar o modelo físico conforme a regra de
negócio:
• 1 album pode ter 1 ou muitas músicas;
• 1 música é de 1 e somente 1 album;*/


create table Album
(idAlbum INT,
nome 	 VARCHAR(40) NOT NULL,
tipo	 VARCHAR(07) not null,
dtLancamento date,

primary key(idAlbum),
constraint chktipo check(tipo in('Digital', 'Físico'))
);

insert into Album
(idAlbum, nome, tipo, dtLancamento)
values(1, 'All We Know Is Falling', 'Físico' , '2005-07-26'),
	  (2, 'The Rising Tied ', 'Físico', '2002-11-22'),
      (3, 'From Under the Cork Tree', 'Digital', '2005-05-03');

/*Execute os comandos para:
a) Exibir todos os dados das tabelas separadamente;*/

select * from Musica;
select * from Album;

/*b) Criar a chave estrangeira na tabela de acordo com a regra de negócio; */

alter table Musica add fk_album INT;
alter table Musica 
add foreign key (fk_album) references Album(idAlbum);

/*c) Atualizar os álbuns de cada música;*/

update Musica
set fk_album = 3
where idMusica in (1,3);

update Musica
set fk_album = 2
where idMusica = 2;


/*d) Exibir as músicas e seus respectivos álbuns;*/

select *
from Musica as m
join album as a
on m.fk_album = a.idAlbum;

/*e) Exibir somente o título da música e o nome do seu respectivo álbum;*/

select m.titulo as Musica, a.nome as Album
from Musica as m
join Album as a 
on m.fk_album = a.idAlbum;

/*f) Exibir os dados das músicas e seu respectivo álbum, de um determinado tipo.*/
select *
from Musica as m
join Album as a
on fk_album = idAlbum
where tipo = 'Digital';