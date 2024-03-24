create database sprint1;

use sprint1;

/*• Criar a tabela chamada Atleta para conter os dados: idAtleta (int e chave primária da 
tabela), nome (varchar, tamanho 40), modalidade (varchar, tamanho 40), qtdMedalha 
(int, representando a quantidade de medalhas que o atleta possui)*/

create table Atleta(
idAtleta INT PRIMARY KEY,
nome VARCHAR(40),
modalidade VARCHAR(40),
qtdMedalha INT
);

/*• Inserir dados na tabela, procurando colocar mais de um atleta para cada modalidade
Escreva e execute os comandos para:*/

insert into atleta (idAtleta, nome, modalidade, qtdMedalha)
values (1, 'GIOVANA', 'Volei', 1);

insert into atleta (idAtleta, nome, modalidade, qtdMedalha)
values (2, 'PEDRO', 'Futebol', 2),
	   (3, 'JOAO', 'Natação', 1),
       (4, 'ANA', 'Golf', 0),
       (5, 'GUSTAVO', 'Volei', 1),
       (6, 'LUCAS', 'Natação', 3),
       (7, 'BIANCA', 'Salto', 0),
       (8, 'BEATRIZ', 'Volei', 1),
       (9, 'TIEMI', 'Natação', 2),
       (10, 'GABRIEL', 'Futebol', 2);
       
/*• Exibir todos os dados da tabela.*/

select * from atleta;

/*• Exibir apenas os nomes e quantidade de medalhas dos atletas.*/

select nome, qtdMedalha from atleta;

/*• Exibir apenas os dados dos atletas de uma determinada modalidade.*/

select * from atleta where modalidade= 'volei';

/*• Exibir os dados da tabela ordenados pela modalidade.*/

select * from atleta order by modalidade;

/*• Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem 
decrescente.*/

select * from atleta order by qtdMedalha desc;

/*• Exibir os dados da tabela, dos atletas cujo nome contenha a letra s*/

select * from atleta where nome like '%s%';

/*• Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.*/

select * from atleta where nome like 'a%';

/*• Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.*/

select * from atleta where nome like '%o';

/*• Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.*/

select * from atleta where nome like'%r_';

/*• Eliminar a tabela. */

drop table Atleta;

/*2 - 
Criar a tabela chamada Musica para conter os dados: idMusica, titulo (tamanho 40), artista 
(tamanho 40), genero (tamanho 40), sendo que idMusica é a chave primária da tabela.*/

create table Musica(
idMusica INT PRIMARY KEY,
titulo VARCHAR(40),
artista VARCHAR(40),
genero VARCHAR(40)
);

select * from Musica;


/*Inserir dados na tabela, procurando colocar um gênero de música que tenha mais de uma 
música, e um artista, que tenha mais de uma música cadastrada. Procure inserir pelo 
menos umas 7 músicas.*/

insert into Musica(idMusica, titulo, artista, genero)
values (1, 'Beatiful Things', 'Benson Boone', 'Pop'),
	   (2, 'Misery Business', 'Paramore', 'Pop Rock'),
       (3, 'View', 'Younha', 'R&B'),
       (4, 'Still into you', 'Paramore', 'Pop rock'),
       (5, 'My heart', 'Paramore', 'Indie'),
       (6, 'Seven Nation Army', 'The White Stropes', 'Indie'),
       (7, 'Sweater Weather', 'The Neighbourhood', 'Indie'),
       (8, 'Poker Face', 'Lady Gaga', 'Pop');
       

/*Execute os comandos para:
a) Exibir todos os dados da tabela.*/

select * from Musica;

/*b) Exibir apenas os títulos e os artistas das músicas.*/

select titulo,artista from Musica;

/*c) Exibir apenas os dados das músicas de um determinado gênero.*/

select * from Musica where genero = 'Indie';
select * from Musica where genero = 'Pop';

/*d) Exibir apenas os dados das músicas de um determinado artista.*/

select * from Musica where artista = 'Paramore';

/*e) Exibir os dados da tabela ordenados pelo título da música.*/

select * from Musica order by titulo;

/*f) Exibir os dados da tabela ordenados pelo artista em ordem decrescente.*/

select * from Musica order by artista desc;

/*g) Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.*/

select * from Musica where titulo like 'P%';

/*h) Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.*/

select * from Musica where artista like '%e';

/*i) Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma 
determinada letra.*/

select * from Musica where genero like'_n%';

/*j) Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma 
determinada letra.
*/

select * from Musica where titulo like '%e_';

/*k) Elimine a tabela.*/

drop table Musica;

/*Criar a tabela chamada Filme para conter os dados: idFilme, título (tamanho 50), genero
(tamanho 40), diretor (tamanho 40), sendo que idFilme é a chave primária da tabela.*/

create table Filme(
idFilme INT PRIMARY KEY,
titulo VARCHAR(50),
genero VARCHAR(40),
diretor VARCHAR(40)
);

/*Inserir dados na tabela, procurando colocar um gênero de filme que tenha mais de um
filme, e um diretor, que tenha mais de um filme cadastrado. Procure inserir pelo menos 
uns 7 filmes.*/

insert into Filme(idFilme, titulo, genero, diretor)
values(1, 'O poderoso Chefão', 'Drama', 'Francis Ford'),
	  (2, 'Interestelar', 'Ficção Científica', 'Christopher Nolan'),
      (3, 'O Labirinto do Fauno', 'Fantasia', 'Guillermo del Toro'),
      (4, 'Titanic', 'Drama', 'James Cameron'),
      (5, 'Cidade de Deus', 'Drama', 'Fernando Meirelles'),
      (6, 'A Origem', 'Ficção Científica', 'Christopher Nolan'),
      (7, 'A forma da Água', 'Fantasia', 'Guillermo del Toro');

-- Fiz de curioso --

select  genero,diretor, count(*) as 'Generos preferidos'
from Filme
group by genero,diretor
having count(*) >1
order by diretor;

/*Execute os comandos para:
• Exibir todos os dados da tabela.*/

select * from Filme;

/*• Exibir apenas os títulos e os diretores dos filmes.*/

select titulo from Filme;

/*• Exibir apenas os dados dos filmes de um determinado gênero.*/

select * from Filme where genero = 'Drama';

/*• Exibir apenas os dados dos filmes de um determinado diretor.*/

select * from Filme where diretor = 'Guillermo del Toro';

/*• Exibir os dados da tabela ordenados pelo título do filme.*/

select * from Filme order by titulo asc;

/*• Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.*/

select * from Filme order by diretor desc;

/*• Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra.*/

select * from Filme where titulo like 'A%';

/*• Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra.*/

select * from Filme where diretor like '%o';

/*• Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma 
determinada letra.*/

select * from Filme where genero like '_r%';

/*• Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma 
determinada letra.*/

select * from Filme where titulo like '%n_';

/*• Elimine a tabela*/

drop table Filme;
select * from Filme;

/*Criar a tabela chamada Professor para conter os dados: idProfessor, nome (tamanho 50), 
especialidade (tamanho 40), dtNasc (date), sendo que idProfessor é a chave primária da 
tabela.
Exemplo do campo data: ‘AAAA-MM-DD’ - ‘1983-10-13’.*/

create table Professor(
idProfessor INT PRIMARY KEY,
nome VARCHAR(50),
especialidade VARCHAR(40),
dtnNascimento date
);

select * from Professor;

/*Inserir dados na tabela, procurando colocar uma especialista para mais de um professor. 
Procure inserir pelo menos uns 6 professores.*/

insert into Professor(idProfessor, nome, especialidade, dtnNascimento)
values (1, 'Ana Risos', 'Matemática', '1991-02-01');

select * from Professor;

insert into Professor(idProfessor, nome, especialidade, dtnNascimento)
values (2, 'Pedro Pascal', 'Biologia', '1965-01-19'),
	   (3, 'Manuela Virginia', 'Portugues', '1967-06-29'),
       (4, 'Tirulipa Ramos', 'Matematica', '1977-11-11'),
       (5, 'Hobson Leite', 'Física', '1989-07-08'),
       (6, 'Claudio Recebo', 'Matematica', '1965-07-19');
       
       -- Fiz de curioso --

select  nome, especialidade, dtnNascimento, count(*) as 'xesque'
from Professor
where dtnNascimento < '2023-01-31'
group by nome, especialidade, dtnNascimento
order by nome;

select nome, dtnNascimento, count(*) as 'dele'
from Professor
where year (dtnNascimento)>= 1970
group by nome, dtnNascimento
order by dtnNascimento;

/*Execute os comandos para:
a) Exibir todos os dados da tabela.*/

select * from Professor;

/*b) Exibir apenas as especialidades dos professores.*/

select especialidade from Professor;

/*c) Exibir apenas os dados dos professores de uma determinada especialidade.*/

select nome, 'Matematica', COUNT(*) as 'Dados da escola'
from Professor
where especialidade = 'Matematica'
group by nome, especialidade
order by nome asc;

/*
d) Exibir os dados da tabela ordenados pelo nome do professor.*/

select nome
from Professor
order by nome;

/*e) Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem 
decrescente.*/

select *
from Professor
order by dtnNascimento desc;


/*f) Exibir os dados da tabela, dos professores cujo nome comece com uma determinada 
letra.*/

select *
from Professor
where nome like 'M%';

/*g) Exibir os dados da tabela, dos professores cujo nome termine com uma determinada 
letra.*/

select *
from Professor
where nome like '%e';

/*h) Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma 
determinada letra.*/

select *
from Professor
where nome like '_a%';

/*i) Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma 
determinada letra.*/

select *
from Professor
where nome like '%a_';

/*j) Elimine a tabela*/

drop table Professor;

/* 5 - Criar a tabela chamada Curso para conter os dados: idCurso, nome (tamanho 50), sigla 
(tamanho 3), coordenador, sendo que idCurso é a chave primária da tabela.*/

create table Curso (
idCurso INT PRIMARY KEY,
nome VARCHAR(50),
sigla CHAR(3),
coordenador VARCHAR(40)
);

select * from Curso;

/*Inserir dados na tabela, procure inserir pelo menos 3 cursos.*/

insert into Curso(idCurso, nome, sigla, coordenador)
values (1, 'Direito', 'DIR', 'Caio Pedroso'),
	   (2, 'Medicina', 'MED', 'Caio Alberto'),
       (3, 'Analise e Desenvolvimento de Sistemas', 'ADS', 'Maria Lousal');
       
/*Execute os comandos para: 
a) Exibir todos os dados da tabela.*/

select * from Curso;

/*
b) Exibir apenas os coordenadores dos cursos.*/

select coordenador from Curso;

/*c) Exibir apenas os dados dos cursos de uma determinada sigla.*/

select * from Curso
where sigla = 'ADS';

/*d) Exibir os dados da tabela ordenados pelo nome do curso.*/

select * from Curso
order by nome asc;

/*e) Exibir os dados da tabela ordenados pelo nome do coordenador em ordem 
decrescente.*/

select * from Curso
order by coordenador desc;

/*f) Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.*/

select * from Curso
where nome like 'M%'
order by sigla asc;

/*g) Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.*/

select * from Curso
where nome like '%s';

/*h) Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma 
determinada letra.*/

select * from Curso
where nome like '_i%';

/*i) Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma 
determinada letra.*/

select * from Curso
where nome like '%a_';

/*j) Elimine a tabela. */

drop table Curso;

/* 6 - Você vai criar uma tabela para armazenar os dados de revistas (como por ex: Veja, Isto é, 
Epoca, Quatro Rodas, Claudia, etc).
 Escreva e execute os comandos para:
• Criar a tabela chamada Revista para conter os campos: idRevista (int e chave 
primária da tabela), nome (varchar, tamanho 40), categoria (varchar, tamanho 30). Os 
valores de idRevista devem iniciar com o valor 1 e ser incrementado automaticamente 
pelo sistema.*/

create table Revista (
idRevista INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
categoria VARCHAR(30)
);

select * from Revista;

/*• Inserir 4 registros na tabela, mas sem informar a categoria.
Escreva e execute os comandos para:
• Exibir todos os dados da tabela.*/

insert into Revista ( nome)
values ('National Geographic'),
	   ('Scientific American'),
       ('Vogue'),
       ('Time');
       
select * from Revista;
       
/*• Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela 
novamente para verificar se atualizou corretamente.*/

update Revista
set categoria = 'Ciência'
where idRevista = 1;

select * from Revista;

update Revista
set categoria = 'Ciência'
where idRevista = 2;

update Revista
set categoria = 'Moda'
where idRevista = 3;

update Revista
set categoria = 'Notícias'
where idRevista = 4;

select * from Revista;

/*• Insira mais 3 registros completos.
• Exibir novamente os dados da tabela.*/

insert into Revista (nome, categoria)
values ('Nature', 'Ciência'),
	   ('People', 'Entreterimento'),
       ('Caras', 'Entreterimento');

select * from Revista;

/*• Exibir a descrição da estrutura da tabela.*/

describe Revista;

/*• Alterar a tabela para que a coluna categoria pssa ter no máximo 40 caracteres.
 Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o 
tamanho da coluna categoria*/

alter table Revista
modify column categoria VARCHAR(40);

describe Revista;

/*• Acrescentar a coluna periodicidade à tabela, que é varchar(15).
• Exibir os dados da tabela.*/

alter table Revista
add column periodicidade VARCHAR(15);

select * from Revista;

/*• Excluir a coluna periodicidade da tabela. */

alter table Revista
drop column periodicidade;

select * from Revista;

drop database sprint1;