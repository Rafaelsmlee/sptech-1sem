create database pratica8;

use pratica8;

CREATE TABLE grupo (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NULL,
  descricao VARCHAR(255) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE aluno (
  ra CHAR(8) NOT NULL,
  fkGrupo INT NOT NULL,
  nome VARCHAR(45) NULL,
  email VARCHAR(100) NULL,
  PRIMARY KEY (ra),
  key fk_aluno_grupo1_idx (fkGrupo),
  CONSTRAINT fk_aluno_grupo1 FOREIGN KEY (fkGrupo) REFERENCES grupo (id)
);

CREATE TABLE disciplina (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE professor (
  id INT NOT NULL AUTO_INCREMENT,
  fkDisciplina INT NOT NULL,
  nome VARCHAR(45) NULL,
  PRIMARY KEY (id),
  KEY fk_professor_disciplina_idx (fkDisciplina),
  CONSTRAINT fk_professor_disciplina FOREIGN KEY (fkDisciplina)
    REFERENCES disciplina (id)
) auto_increment=10000;

CREATE TABLE avaliacao (
  fkProfessor INT NOT NULL,
  fkGrupo INT NOT NULL,
  inicioAvaliacao DATETIME NOT NULL,
  nota DECIMAL(2,1) NOT NULL,
  PRIMARY KEY (fkProfessor, fkGrupo),
  KEY ix_fk_grupo(fkGrupo),
  KEY ix_fk_professor(fkProfessor),
  CONSTRAINT fk_avaliacao_professor FOREIGN KEY (fkProfessor) REFERENCES professor (id),
  CONSTRAINT fk_avaliacao_grupo FOREIGN KEY (fkGrupo) REFERENCES grupo (id)
);

CREATE TABLE avaliacao_forte (
  id int not null auto_increment,
  fkProfessor INT NOT NULL,
  fkGrupo INT NOT NULL,
  inicioAvaliacao DATETIME NOT NULL,
  nota DECIMAL(2,1) NOT NULL,
  PRIMARY KEY(id),
  UNIQUE uk_grupo_professor(fkProfessor, fkGrupo),
  KEY ix_fk_grupo(fkGrupo),
  KEY ix_fk_professor(fkProfessor),
  CONSTRAINT fk_aval_professor FOREIGN KEY (fkProfessor) REFERENCES professor (id),
  CONSTRAINT fk_aval_grupo FOREIGN KEY (fkGrupo) REFERENCES grupo (id)
);

INSERT INTO grupo (nome, descricao) 
VALUES ('Grupo 1', 'Descrição do Grupo 1'),
       ('Grupo 2', 'Descrição do Grupo 2'),
       ('Grupo 3', 'Descrição do Grupo 3');
       
-- Alunos do Grupo A
INSERT INTO aluno (ra, fkGrupo, nome, email) 
VALUES ('12345678', 1, 'João', 'joao1@example.com'),
       ('87654321', 1, 'Maria', 'maria1@example.com'),
       ('11112222', 1, 'Pedro', 'pedro1@example.com');
-- Alunos do Grupo B
INSERT INTO aluno (ra, fkGrupo, nome, email) 
VALUES ('22223333', 2, 'Ana', 'ana1@example.com'),
       ('33334444', 2, 'Lucas', 'lucas1@example.com'),
       ('44445555', 2, 'Mariana', 'mariana1@example.com');
-- Alunos do Grupo C
INSERT INTO aluno (ra, fkGrupo, nome, email) 
VALUES ('55556666', 3, 'Gabriel', 'gabriel1@example.com'),
       ('66667777', 3, 'Larissa', 'larissa1@example.com'),
       ('77778888', 3, 'Rodrigo', 'rodrigo1@example.com');

INSERT INTO disciplina (nome) 
VALUES ('Linguagem de Programação'),
        ('Banco de Dados'),
       ('Redes de Computadores'),
       ('Engenharia de Software'),
       ('Sistemas Operacionais');    
       
INSERT INTO professor (fkDisciplina, nome) 
VALUES (1, 'José Silva'),
       (2, 'Maria Souza'),
       (3, 'Carlos Oliveira'),
       (4, 'Ana Santos'),
       (5, 'Paulo Costa');      

INSERT INTO avaliacao (fkProfessor, fkGrupo, inicioAvaliacao, nota) 
VALUES (10000, 1, current_timestamp(), 8.5),
       (10001, 1, current_timestamp(), 7.9),
       (10003, 1, current_timestamp(), 7.7),
       (10000, 2, current_timestamp(), 5.0),       
       (10002, 2, current_timestamp(), 9.2),
       (10003, 2, current_timestamp(), 8.8),
       (10000, 3, current_timestamp(), 7.0),
       (10001, 3, current_timestamp(), 8.0),
       (10002, 3, current_timestamp(), 6.5),
       (10004, 3, current_timestamp(), 8.0);

INSERT INTO avaliacao_forte (fkProfessor, fkGrupo, inicioAvaliacao, nota) 
VALUES (10000, 1, current_timestamp(), 8.5),
       (10001, 1, current_timestamp(), 7.9),
       (10003, 1, current_timestamp(), 7.7),
       (10000, 2, current_timestamp(), 5.0),       
       (10002, 2, current_timestamp(), 9.2),
       (10003, 2, current_timestamp(), 8.8),
       (10000, 3, current_timestamp(), 7.0),
       (10001, 3, current_timestamp(), 8.0),
       (10002, 3, current_timestamp(), 6.5),
       (10004, 3, current_timestamp(), 8.0);

-- inserindo dados duplicados
INSERT INTO avaliacao (fkProfessor, fkGrupo, inicioAvaliacao, nota) 
VALUES (10000, 1, current_timestamp(), 8.5);

INSERT INTO avaliacao_forte (fkProfessor, fkGrupo, inicioAvaliacao, nota) 
VALUES (10000, 1, current_timestamp(), 8.5);
       
       
-- 7. Exibir a média das notas atribuídas aos grupos, no geral.
select avg(av.nota) as 'Media das notas', grp.nome
from avaliacao as av
join grupo as grp on av.fkgrupo = grp.id
group by grp.nome;

-- Quer a média das notas maiores que 8

select pro.nome, round(avg(nota),1) media
from avaliacao ava
join professor pro on pro.id=ava.fkprofessor
group by pro.nome
-- having media >= 8;
having round(avg(nota),1) >= 8
order by media desc;

-- 8. Exibir a nota mínima e a nota máxima que foi atribuída aos grupos, no geral.
select
min(nota) as 'Menor nota',
max(nota) as 'Maior nota'
from avaliacao;

-- quando usar subquery -> 

select avg(av.nota) as 'Media das notas', pro.nome
from grupo as grp
join avaliacao as av  on av.fkgrupo = grp.id
join professor pro on av.fkprofessor = pro.id
where av.nota > (select round(avg(av.nota),1) from avaliacao)
group by pro.nome;

select pro.nome, round(avg(nota),1) 'Média'
from avaliacao ava
inner join professor pro on pro.id = ava.fkprofessor
group by pro.nome
having Média >=8;
