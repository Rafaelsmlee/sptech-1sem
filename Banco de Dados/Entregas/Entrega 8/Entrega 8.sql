/*
1. Criar as tabelas no MySQL e executar as intruções relacionadas a seguir.
2. Insira dados nas tabelas, de forma que tenha pelo menos 2 grupos cadastrados.
Após inserir dados nas tabelas:
3 - Exibir todos os dados de cada tabela criada separadamente.
4. Se for necessário, fazer os acertos da(s) chave(s) estrangeira(s). 
*/

create database 1semestre;
use 1semestre;

create table aluno(
RA INT NOT NULL,
nome VARCHAR(45) NOT NULL,
email VARCHAR(100) NOT NULL,

primary key(RA)
);

create table professor(
id INT NOT NULL auto_increment,
nome VARCHAR(45) NOT NULL,
disciplina VARCHAR(45) NOT NULL,

primary key (id)
) auto_increment=10000;


create table grupo(
id INT NOT NULL auto_increment,
nome VARCHAR(45) NOT NULL,
descricao VARCHAR (45),
aluno_RA INT NOT NULL,
professor_id INT NOT NULL,
data datetime,
nota DECIMAL(3,2),

primary key (id, aluno_RA, professor_id),
constraint fkRA foreign key(aluno_RA) references aluno(RA),
constraint fkProfessor1 foreign key(professor_id) references professor(id)
);

insert into aluno(
RA, nome, email )
values
(01241004, 'Rafael', 'rafael@email.com'),
(01232028, 'Giovanna', 'giovanna@email.com'),
(01241111, 'Michael', 'michael@email.com'),
(01241000, 'Anna', 'anna@email.com');

insert into professor(
disciplina, nome)
values
('Pesquisa e Inovação', 'Priscila'),
('Algorítimo', 'Pietro'),
('Matemática', 'Rayane'),
('Empreendeorismo', 'Rauã');


insert into grupo(
nome, descricao, data, nota, aluno_RA, professor_id)
values
('Grupo Rabbadon', 'Controle de presença em lojas','2024-05-03 10:30:00', 9.4, 01241004, 10002), -- Grupo E: Rafael, Rauã
('Grupo Rabbadon', 'Controle de presença em lojas', '2024-05-03 10:30:00', 9.3, 01241004, 10001), -- Grupo E: Rafael, Pietro
('Grupo Rabbadon', 'Controle de presença em lojas', '2024-05-03 10:30:00', 9.0, 01232028, 10001), -- Grupo F: Giovanna, Pietro
('Grupo Rabbadon', 'Controle de presença em lojas', '2024-05-03 10:30:00', 7.9, 01232028, 10002), -- Grupo F: Giovanna, Rauã
('Grupo IceCold', 'Controle de temperatura de sorvete','2024-05-11 08:30:00', 4.2, 01241111, 10002), --  Michael, Rayane
('Grupo IceCold', 'Controle de temperatura de sorvete','2024-05-11 08:30:00', 7.2, 01241111, 10000), --  Michael, Priscila
('Grupo IceCold', 'Controle de temperatura de sorvete', '2024-05-11 08:30:00', 8.0, 01241000,  10002), --  Anna, Rauã
('Grupo IceCold', 'Controle de temperatura de sorvete', '2024-05-11 08:30:00', 7.3, 01241000, 10000); --  Anna, Priscila

select * 
from aluno;

select * 
from professor;

select * from
grupo;

-- 5- Exibir os dados dos grupos e os dados de seus respectivos alunos.

select * 
from aluno as al
inner join grupo as g on g.aluno_RA = al.RA
order by al.RA;

-- 6. Exibir os dados de um determinado grupo e os dados de seus respectivos alunos.
select * 
from aluno as al
inner join grupo as g on g.aluno_RA = al.RA
where g.nome = 'Grupo IceCold';

-- 7. Exibir a média das notas atribuídas aos grupos, no geral.
select
round(avg(nota),2) as 'Média da nota dos grupos'
from grupo;

-- 8. Exibir a nota mínima e a nota máxima que foi atribuída aos grupos, no geral.
select
min(nota) as 'Menor nota',
max(nota) as 'Maior nota'
from grupo;

-- 9. Exibir a soma das notas dadas aos grupos, no geral.

select sum(nota) as 'Soma das notas'
from grupo;

-- 10. Exibir os dados dos professores que avaliaram cada grupo, os dados dos grupos, a data e o horário da avaliação.

select distinct
p.nome as 'Nome do professor',
p.disciplina as 'Disciplina do professor',
g.nome as 'Nome do grupo',
g.descricao as 'Descrição do projeto',
g.data as 'Data da avaliação',
g.nota as 'Nota'
from
    professor as p
inner join
    grupo as g on g.professor_id = p.id;

-- 11. Exibir os dados dos professores que avaliaram um determinado grupo, os dados do grupo, a data e o horário da avaliação.

select 
p.nome as 'Nome do professor',
p.disciplina as 'Disciplina do professor',
g.nome as 'Nome do grupo',
g.descricao as 'Descrição do projeto',
g.data as 'Data da avaliação',
g.nota as 'Nota'
from 
	professor as p
inner join
	grupo as g on g.professor_id = p.id
where g.nome like ('%Rabbadon');

-- 12. Exibir os nomes dos grupos que foram avaliados por um determinado professor.
select 
	g.nome as 'Nome do grupo'
from 
	grupo as g
inner join
	professor as p on g.professor_id = p.id
where p.nome = 'Rayane';

-- 13. Exibir os dados dos grupos, os dados dos alunos correspondentes, os dados dos professores que avaliaram, a data e o horário da avaliação.
select
	g.id as 'ID do grupo', g.nome as 'Nome do grupo', g.Descricao as 'Descrição do projeto',
    a.RA as 'Registro do Aluno', a.nome as 'Nome do aluno', a.email as 'E-mail do Aluno',
    p.id as 'ID do professor', p.nome as 'Nome do professor', p.disciplina 'Disciplina do professor'
from 
	grupo as g
inner join
	professor as p on g.professor_id = p.id
inner join
	aluno as a on g.aluno_RA = a.RA
order by g.id;


-- 14. Exibir a quantidade de notas distintas.

select
	count(distinct nota) as 'Quantidade de notas distintas'
from
	grupo;

-- 15. Exibir a identificação do professor (pode ser o fk ou o nome), a média das notas e a soma das notas atribuídas, agrupadas por professor.
select 
	p.nome as 'Nome do professor',
	round(avg(g.nota),2) as 'Média das notas',
	sum(g.nota) as 'Soma das notas'
from 
	grupo as g
inner join
	professor as p on g.professor_id = p.id
group by p.nome;

-- 16. Exibir a identificação do grupo (pode ser FK ou o nome), a média das notas e soma das notras atribuídas, agrupadas por grupo.

select
    g.nome as identificacao_grupo,
    round(avg(g.nota),2) as media_notas,
    sum(g.nota) as soma_notas
from
    grupo g
group by
    g.nome;

-- 17. Exibir a identificação do professor (pode ser fk ou o nome), a menor nota e a maior nota atribuída, agrupada por professor.

select 
	p.nome,
    min(g.nota),
    max(g.nota)
from 
	grupo as g
inner join
	professor as p on g.professor_id = p.id
group by
	p.nome;

-- 18. Exibir a identificação do grupo (pode ser o fk ou o nome), a menor nota e a maior nota atribuída, agrupada por grupo.

select 
	g.nome,
    min(g.nota),
    max(g.nota)
from 
	grupo as g
group by
	g.nome;

