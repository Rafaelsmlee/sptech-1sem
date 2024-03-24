/*
No MySQL Workbench, utilizando o banco de dados ‘sprint1’:
Escreva e execute os comandos para:
• Criar a tabela chamada Atleta para conter os dados: idAtleta (int e chave primária da 
tabela), nome (varchar, tamanho 40), modalidade (varchar, tamanho 40), qtdMedalha 
(int, representando a quantidade de medalhas que o atleta possui)*/
create database sprint1;
use sprint1;
create table Atletica(
idAtleta INT PRIMARY KEY,
nome VARCHAR(40),
modalidade VARCHAR(40),
qtdMedalha int
);

rename table Atletica to Atleta;


/*• Inserir dados na tabela, procurando colocar mais de um atleta para cada modalidade
e pelo menos 5 atletas.*/

insert into Atleta(idAtleta, nome, modalidade, qtdMedalha)
values (1,'Raissa', 'Natação', 2 ),
	   (2, 'Pedro', 'Futebol', 3),
       (3, 'Ananda', 'Natação', 2),
       (4, 'Rayane', 'Judo', 0),
       (5, 'Welber', 'Basquete', 1);

/*Escreva e execute os comandos para:
• Exibir todos os dados da tabela.*/

select * from Atleta;

/*
• Atualizar a quantidade de medalhas do atleta com id=1;
• Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3;
• Atualizar o nome do atleta com o id=4;*/

update Atleta
	set qtdMedalha = 5
    where idAtleta = 1;
    
update Atleta
	set qtdMedalha = 0
    where idAtleta = 2;
    
update Atleta
	set qtdMedalha = 0
    where idAtleta = 3;
    
update Atleta
	set nome = 'Brenda'
    where idAtleta = 4;
    
select * from Atleta;

/*
• Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date;*/

alter table Atleta add column data_nascimento date;
desc Atleta;

/*
• Atualizar a data de nascimento de todos os atletas;*/

update Atleta
set data_nascimento = '1997-01-02'
where idAtleta = 1;

update Atleta
set data_nascimento = '2000-05-02'
where idAtleta = 2;

update Atleta
set data_nascimento = '1987-11-20'
where idAtleta = 3;

update Atleta
set data_nascimento = '1999-08-19'
where idAtleta = 4;

update Atleta
set data_nascimento = '1970-02-20'
where idAtleta = 5;


/*
• Excluir o atleta com o id=5;*/

delete from Atleta
where idAtleta = 5;

select * from Atleta;
/*
• Exibir os atletas onde a modalidade é diferente de natação;*/

select * from Atleta
where modalidade != 'Natação';

/*• Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3;*/

select * from Atleta
where qtdMedalha >= 3;

/*• Modificar o campo modalidade do tamanho 40 para o tamanho 60;*/

alter table Atleta modify column modalidade VARCHAR(60);

/*• Descrever os campos da tabela mostrando a atualização do campo modalidade;
• Limpar os dados da tabela;
*/

desc Atleta;

drop table Atleta;

/*
Criar a tabela chamada Musica para conter os dados: idMusica, titulo (tamanho 40), artista 
(tamanho 40), genero (tamanho 40), sendo que idMusica é a chave primária da tabela.
Inserir dados na tabela, procurando colocar um gênero de música que tenha mais de uma 
música, e um artista, que tenha mais de uma música cadastrada. Procure inserir pelo 
menos umas 7 músicas.
Execute os comandos para:
a) Exibir todos os dados da tabela.*/

create table Musica(
idMusica INT PRIMARY KEY,
titulo VARCHAR(40),
artista VARCHAR(40),
genero VARCHAR(40)
 );
 
 insert into Musica (idMusica, titulo, artista, genero)
values(1, 'Poker Face', 'Lady Gaga', 'Pop' ),
	  (2, 'Remember the Name', 'Fort Mirror', 'Rap'),
      (3, 'Dance Dance', 'Fall Out Boys', 'Alternativo'),
      (4, 'Centruries', 'Fall Out Boys', 'Alternativo'),
      (5, 'Comet', 'Younha' , 'Pop'),
      (6, 'My heart', 'Paramore', 'Balada'),
      (7, 'crushcrushcrush', 'Paramore', 'Rock');
      
select * from Musica;
 

/*b) Adicionar o campo curtidas do tipo int na tabela;*/

alter table Musica add column curtidas INT;
desc Musica;

/*
c) Atualizar o campo curtidas de todas as músicas inseridas;*/

update Musica
	set curtidas = 50
    where idMusica = 1;

select * from Musica;

update Musica
	set curtidas = 60
    where idMusica = 2;
    
update Musica
	set curtidas = 20
    where idMusica = 3;
    
update Musica
	set curtidas = 89
    where idMusica = 4;
    
update Musica
	set curtidas = 999
    where idMusica = 5;
    
update Musica
	set curtidas = 240
    where idMusica = 6;
    
update Musica
	set curtidas = 399
    where idMusica = 7;
    
select * from Musica;
/*
d) Modificar o campo artista do tamanho 40 para o tamanho 80;*/

alter table Musica modify column artista VARCHAR(80);

/*
e) Atualizar a quantidade de curtidas da música com id=1;*/

update Musica
	set curtidas = 77
    where idMusica = 1;

/*
f) Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3;*/

update Musica
	set curtidas = 88
    where idMusica = 2;
    
update Musica
	set curtidas = 876
    where idMusica = 3;

/*
g) Atualizar o nome da música com o id=5;*/

	update Musica
	set Titulo = 'TalkPlayLove'
    where idMusica = 5;
    
    select * from Musica;

/*
h) Excluir a música com o id=4;*/

	delete from Musica
    where idMusica = 4;

/*
i) Exibir as músicas onde o gênero é diferente de funk;*/

	select * from Musica
    where genero != 'funk';
    
/*
j) Exibir os dados das músicas que tem curtidas maior ou igual a 20;*/
	select * from Musica
    where curtidas >= 20;

/*
k) Descrever os campos da tabela mostrando a atualização do campo artista;*/

	desc Musica;

/*
l) Limpar os dados da tabela;
*/
	truncate Musica;
    
    
/* 3- Criar a tabela chamada Filme para conter os dados: idFilme, título (tamanho 50), genero
(tamanho 40), diretor (tamanho 40), sendo que idFilme é a chave primária da tabela.
Inserir dados na tabela, procurando colocar um gênero de filme que tenha mais de um
filme, e um diretor, que tenha mais de um filme cadastrado. Procure inserir pelo menos 
uns 7 filmes.*/

create table Filme(
idFilme INT PRIMARY KEY,
titulo VARCHAR(50),
genero VARCHAR(40),
diretir VARCHAR(40)
);

alter table Filme
rename column diretir to diretor;

insert into Filme(idFilme, titulo, genero, diretor)
values(1, 'O poderoso Chefão', 'Drama', 'Francis Ford'),
	  (2, 'Interestelar', 'Ficção Científica', 'Christopher Nolan'),
      (3, 'O Labirinto do Fauno', 'Fantasia', 'Guillermo del Toro'),
      (4, 'Titanic', 'Drama', 'James Cameron'),
      (5, 'Cidade de Deus', 'Drama', 'Fernando Meirelles'),
      (6, 'A Origem', 'Ficção Científica', 'Christopher Nolan'),
      (7, 'A forma da Água', 'Fantasia', 'Guillermo del Toro');


/*
Execute os comandos para:
• Exibir todos os dados da tabela.*/

select titulo from Filme;

/*
• Adicionar o campo protagonista do tipo varchar(50) na tabela;*/

alter table Filme
add protagonista VARCHAR(50);

/*
• Atualizar o campo protagonista de todas os filmes inseridos;*/

update Filme
set protagonista = 'Don Corleone'
where idFilme = 1;

update Filme
set protagonista = 'Cooper'
where idFilme = 2;

update Filme
set protagonista = 'Ofelia'
where idFilme = 3;

update Filme
set protagonista = 'Rose'
where idFilme = 4;

update Filme
set protagonista = 'Buscapé'
where idFilme = 5;

update Filme
set protagonista = 'Cobb'
where idFilme = 6;

update Filme
set protagonista = 'Sally'
where idFilme = 7;


/*
• Modificar o campo diretor do tamanho 40 para o tamanho 150;*/

alter table Filme
modify column diretor VARCHAR(150);

/*
• Atualizar o diretor do filme com id=5;*/

update Filme
set diretor = 'Ameixa'
where idFilme = 5;

/*
• Atualizar o diretor dos filmes com id=2 e com o id=7;*/

update Filme
set diretor = 'Guillermo del Toro'
where idFilme = 2;

update Filme
set diretor = 'Christopher Nolan'
where idFilme = 5;

/*
• Atualizar o título do filme com o id=6;*/

update Filme
set titulo = 'O teste de Jiló'
where idFilme = 6;

/*
• Excluir o filme com o id=3;*/

delete from Filme 
where idFilme=3;

/*
• Exibir os filmes em que o gênero é diferente de drama;*/

select * from Filme
where genero != 'drama';

/*
• Exibir os dados dos filmes que o gênero é igual ‘suspense’;*/

select * from Filme
where genero = 'suspense';

/*
• Descrever os campos da tabela mostrando a atualização do campo protagonista e 
diretor;
• Limpar os dados da tabela;
*/

desc Filme;
truncate Filme;

/*
Criar a tabela chamada Professor para conter os dados: idProfessor, nome (tamanho 50), 
especialidade (tamanho 40), dtNasc (date), sendo que idProfessor é a chave primária da 
tabela.
Exemplo do campo data: ‘AAAA-MM-DD’, ‘1983-10-13’.
Inserir dados na tabela, procurando colocar uma especialista para mais de um professor. 
Procure inserir pelo menos uns 6 professores.
Execute os comandos para:
a) Exibir todos os dados da tabela.*/

create table Professor (
idProfessor INT PRIMARY KEY,
nome VARCHAR(50),
especialidade VARCHAR(40),
dtnNasc date
);

insert into Professor(idProfessor, nome, especialidade, dtnNasc)
values (1, 'Ana Risos', 'Matemática', '1991-02-01'),
	   (2, 'Pedro Pascal', 'Biologia', '1965-01-19'),
	   (3, 'Manuela Virginia', 'Portugues', '1967-06-29'),
       (4, 'Tirulipa Ramos', 'Matematica', '1977-11-11'),
       (5, 'Hobson Leite', 'Física', '1989-07-08'),
       (6, 'Claudio Recebo', 'Matematica', '1965-07-19');
       
select * from Professor;

/*
b) Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’, 
‘assistente’ ou ‘titular’;*/

alter table Professor
add column funcao VARCHAR(50);

alter table Professor
add constraint check_funcao check (funcao in ('monitor','assistente', 'titular'));

/*
c) Atualizar os professores inseridos e suas respectivas funções;*/

update Professor
set funcao = 'Monitor'
where idProfessor in (1,3,4);

update Professor
set funcao ='Assistente'
where idProfessor = 6;

update Professor
set funcao = 'Titular'
where idProfessor in (2,5);

/*
d) Inserir um novo professor;*/

insert into Professor
values (7, 'Pedro Ribeiro', 'Inglês', '2000-09-19', 'Titular' );

/*
e) Excluir o professor onde o idProfessor é igual a 5;*/

delete from Professor
where idProfessor = 5;

/*
f) Exibir apenas os nomes dos professores titulares;*/
select nome as 'Nome dos titulares'
from Professor
where funcao = 'Titular'
order by nome desc;

/*
g) Exibir apenas as especialidades e as datas de nascimento dos professores monitores;*/

select especialidade, dtnNasc
from Professor
where funcao = 'Monitor'
order by nome desc;

/*
h) Atualizar a data de nascimento do idProfessor igual a 3
i) Limpar a tabela Professor*/

update Professor
set dtnNasc = '1998-09-09'
where idProfessor = 3;

truncate table Professor;

/*
5 - Criar a tabela chamada Curso para conter os dados: idCurso, nome (tamanho 50), sigla 
(tamanho 3), coordenador, sendo que idCurso é a chave primária da tabela.
Inserir dados na tabela, procure inserir pelo menos 3 cursos.
Execute os comandos para:
a) Exibir todos os dados da tabela.*/

create table Curso(
idCurso INT PRIMARY KEY,
nome VARCHAR(50),
sigla CHAR(3),
coordenador VARCHAR(50)
);

insert into Curso (idCurso, nome, sigla, coordenador)
values (1, 'Direito', 'DIR', 'Caio Pedroso'),
	   (2, 'Medicina', 'MED', 'Caio Alberto'),
       (3, 'Analise e Desenvolvimento de Sistemas', 'ADS', 'Maria Lousal');

select * 
from Curso;

/*
b) Exibir apenas os coordenadores dos cursos.*/

select coordenador
from Curso;

/*
c) Exibir apenas os dados dos cursos de uma determinada sigla.*/

select * 
from Curso
where sigla = 'MED';

/*
d) Exibir os dados da tabela ordenados pelo nome do curso.*/

select *
from Curso
order by nome;

/*
e) Exibir os dados da tabela ordenados pelo nome do coordenador em ordem 
decrescente.*/
select *
from Curso
order by coordenador desc;

/*
f) Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.*/
select *
from Curso
where nome like 'M%';

/*
g) Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.*/
select *
from Curso
where nome like '%S';

/*
h) Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma 
determinada letra.*/
select *
from Curso
where nome like '_I%';

/*
i) Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma 
determinada letra.
j) Elimine a tabela
*/

select *
from Curso
where nome like '%A_';

drop table Curso;

/*6 - Você vai criar uma tabela para armazenar os dados de revistas (como por ex: Veja, Isto é, 
Epoca, Quatro Rodas, Claudia, etc).
Escreva e execute os comandos para:
• Criar a tabela chamada Revista para conter os campos: idRevista (int e chave 
primária da tabela), nome (varchar, tamanho 40), categoria (varchar, tamanho 30). Os 
valores de idRevista devem iniciar com o valor 1 e ser incrementado automaticamente 
pelo sistema.
• Inserir 4 registros na tabela, mas sem informar a categoria.
Escreva e execute os comandos para:
• Exibir todos os dados da tabela.*/

create table Revista (
idRevista INT PRIMARY KEY auto_increment,
 nome VARCHAR(40), 
 categoria VARCHAR(40));
 
 insert into Revista( nome, categoria)
 values ('National Geographic', 'Ciência'),
	   ('Scientific American','Ciência'),
       ('Vogue', 'Moda'),
       ('Time','Notícias');
       
select * 
from Revista;

/*
• Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela 
novamente para verificar se atualizou corretamente.*/

update Revista
set categoria = 'Moda'
where idRevista IN (1,4);

update Revista
set categoria = 'Notícia'
where idRevista = 2;

update Revista
set categoria = 'Culinária'
where idRevista = 3;

select *
from Revista;

/*
• Insira mais 3 registros completos.
• Exibir novamente os dados da tabela.
• Exibir a descrição da estrutura da tabela.*/

insert into Revista (nome, categoria)
values ('Nature', 'Ciência'),
	   ('People', 'Entreterimento'),
       ('Caras', 'Entreterimento');
       
select * from Revista;
desc Revista;
/*
• Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
• Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o 
tamanho da coluna categoria*/
alter table Revista
modify column categoria VARCHAR(40);

desc Revista;

/*
• Acrescentar a coluna periodicidade à tabela, que é varchar(15)
• Exibir os dados da tabela.
• Excluir a coluna periodicidade da tabela.
*/

alter table Revista
add column periodicidade VARCHAR(15);

select * from Revista;

alter table Revista
drop column periodicidade;

/*7 - Escreva e execute os comandos para:
• Criar a tabela chamada Serie para conter os campos: idSerie (int e chave primária da 
tabela), nome (varchar, tamanho 40), qtdTemporadas (int), status (varchar, tamanho 
40). Onde o status só pode ser em andamento, finalizada ou não assistida. Os valores 
de idSerie devem iniciar com o valor 100 e ser incrementado automaticamente pelo 
sistema.
• Inserir 4 registros na tabela.
Escreva e execute os comandos para:
• Exibir todos os dados da tabela.*/

create table Serie (
idSerie INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
qtdTempoaradas int,
status VARCHAR(40) check(status IN ('em andamento', 'finalizada', 'não assistida' ))
) auto_increment = 100;

alter table Serie
rename column qtdTempoaradas to qtdTemporadas;

insert into Serie(nome, qtdTemporadas, status)
values ('Game of Thrones', 8, 'finalizada'),
	   ('Breaking Bad', 5, 'em andamento'),
       ('Sex Education', 4, 'finalizada'),
       ('Friends', 10, 'em andamento');
       
       select * from Serie;
       
       /* 8 - Criar a tabela chamada Carro para conter os dados: idCarro int, nome (tamanho 70), placa 
(tamanho 7), marca (tamanho 20), sendo que idCarro é a chave primária da tabela.
Inserir dados na tabela, procurando colocar uma marca de carro que tenha mais de um 
carro. Procure inserir pelo menor 5 carros.
O campo marca (tamanho 20) está muito pequeno. É necessário aumentar o número de 
caracteres para 40.
Execute os comandos para:
1) Exibir todos os campos da tabela.*/

create table Carro(
idCarro int primary key,
nome VARCHAR(70),
placa CHAR(7),
marca VARCHAR(20)
);

insert into Carro(idCarro, nome, placa, marca)
values (1, 'Santero', 'GFG0875', 'Ford'),
	   (2, 'Rexona', 'TYT8249', 'Hyundai'),
       (3, 'Doral', 'FDP4C92', 'Toyota'),
       (4, 'Ka', 'QQT8U70', 'Ford'),
       (5, 'EcoSport', 'YYV9876', 'Toyota');
       
alter table Carro
modify column marca VARCHAR(40);

select * from Carro;

/*
2) Exibir apenas os nomes e as placas dos carros.*/
select nome,placa
from Carro;

/*
3) Exibir apenas os dados dos carros de uma determinada marca.*/
select *
from carro
where marca = 'Toyota';

/*
4) Exibir apenas os dados dos carros de uma determinada placa.*/
select *
from carro
where placa = 'GFG0875';
/*
5) Exibir os dados da tabela ordenados pela marca do carro.*/
select *
from Carro;

/*
6) Exibir os dados da tabela ordenados pelo nome em ordem decrescente.*/
select *
from Carro
order by nome desc;

/*
7) Exibir os dados da tabela, dos carros cujo nome termine com uma determinada letra.*/
select *
from Carro
where nome like '%a';

/*
8) Exibir os dados da tabela, dos carros cujo marca comece com uma determinada letra.*/
select *
from Carro
where nome like 'R%';

/*9) Exibir os dados da tabela, dos carros cuja placa tenha como segunda letra uma 
determinada letra.*/
select *
from Carro
where nome like '_A%';

/*
10) Exibir os dados da tabela, dos carros cujo nome tenha como penúltima letra uma 
determinada letra.*/
select *
from Carro
where nome like '%A_';

/*
11) Atualize uma placa de algum carro. Exiba novamente os dados da tabela após a 
atualização.*/
update Carro
set placa = 'PPB0894'
where idCarro = 5;

select * from Carro;
/*
12) Exclua algum carro da tabela. Exiba novamente os dados da tabela após a exclusão.
13) Elimine a tabela.*/

delete from Carro
where idCarro = 4;

select * from Carro;

drop table Carro;

/*Criar a tabela chamada Restaurante para conter os dados: idRest, nome (tamanho 40), CEP 
(tamanho 9), exemplo: '01515-999', tipo (tamanho 30), sendo que idRest tem um valor 
numérico inteiro e é a chave primária da tabela. O tipo do restaurante é o tipo da comida que é 
servida (churrascaria, italiana, japonesa, fast-food, etc)
Inserir dados na tabela, procurando colocar um tipo de restaurante que tenha mais de um 
restaurante. Procure inserir pelo menos 5 restaurantes.
O campo tipo (tamanho 30) está muito pequeno. É necessário aumentar os caracteres para o 
tamanho 50.
Execute os comandos para:
1) Exibir todos os dados da tabela.*/
create table Restaurante(
idRest INT PRIMARY KEY,
nome VARCHAR(40),
CEP CHAR(9),
tipo VARCHAR(30) check (tipo in('churrascaria', 'italiana', 'japonesa', 'fast-food', 'etc'))
);
insert into Restaurante (idRest, nome, CEP, tipo)
values (1, 'Aoyama', '02311-003', 'japonesa'),
	   (2, 'Mc Donalds', '01123-002', 'fast-food'),
	   (3, 'Djapa', '02411-000', 'japonesa'),
       (4, 'Pollo Lokos', '08027-009', 'etc'),
       (5, 'Kings', '09874-012', 'italiana');
/*
2) Exibir apenas os nomes e os tipos dos restaurantes.*/
select nome, tipo 
from Restaurante;

/*
3) Exibir apenas os dados dos restaurantes de um determinado tipo.*/
select * 
from restaurante
where tipo = 'japonesa';
/*
4) Exibir apenas os dados dos restaurantes de um determinado CEP.*/
select *
from Restaurante
where cep = '09874-012';

/*
5) Exibir os dados da tabela ordenados pelo nome do restaurante.*/
select *
from Restaurante
order by nome asc;

/*
6) Exibir os dados da tabela ordenados pelo tipo em ordem decrescente.*/
select *
from Restaurante
order by tipo desc;

/*
7) Exibir os dados da tabela, dos restaurantes cujo nome comece com uma determinada letra.*/
select *
from Restaurante
where nome like 'A%';

/*
8) Exibir os dados da tabela, dos restaurantes cujo CEP termine com um determinado número.*/
select *
from Restaurante
where cep like '%2';

/*
9) Exibir os dados da tabela, dos restaurantes cujo tipo tenha como segunda letra uma 
determinada letra.*/
select *
from Restaurante
where nome like '_i%';

/*
10) Exibir os dados da tabela, dos restaurantes cujo nome tenha como penúltima letra uma 
determinada letra.*/
select *
from Restaurante
where nome like '%p_';

/*
11) Atualize o CEP de algum restaurante. Exiba novamente os dados da tabela após a 
atualização.*/
update Restaurante
set CEP = '99999-999'
where idRest = 2;
select * from Restaurante;

/*
12) Exclua algum restaurante da tabela. Exiba novamente os dados da tabela após a 
exclusão.*/

delete from Restaurante 
where idRest = 2;
select * from Restaurante;
/*
13) Elimine a tabela.*/

truncate table Restaurante;

drop database SPRINT1;