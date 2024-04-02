select timestampdiff(year, '1992-02-19', now())idade;

select timestampdiff(month, '1992-02-19', now()) 'idade em meses';

select timestampdiff (month, '2024-02-19', now()) 'meses';

select timestampdiff(day, '1992-02-19', now()) 'idade em dias';

select timestampdiff(month, '1992-02-19', now()) - 384 'meses depois do aniversario';

drop database sprint2;
create database sprint2;
use sprint2;
/*
funcionario
nome
sobrenome
email
*/
create table Funcionario
(idFuncionario INT auto_increment,
nome VARCHAR(45),
sobrenome VARCHAR(45),
email VARCHAR (100),
dataNascimento date,
cargo VARCHAR(50),
fk_nomeChefe INT NULL,

primary key (idFuncionario),
foreign key fkNomeChefe (fk_nomeChefe) references Funcionario (idFuncionario)
);

create table dependentes
(idDependentes INT auto_increment,
nome VARCHAR(45),
dataNascimento date,
parentesco VARCHAR(10),
fk_idFuncionario INT,

primary key (idDependentes),
foreign key (fk_idFuncionario) references Funcionario (idFuncionario)
);

insert into funcionario
(nome, sobrenome, email, dataNascimento, cargo,fk_nomeChefe)
values ('Rafael', 'Pereira', 'rafael.pereira@gmail.com', '1990-02-10', 'Diretor', null),
	    ('Rave', 'Otimus', 'rafa.otimus@gmail.com', '2002-03-11', 'Estagiário',3),
       ('Gustavo', 'Kim', 'gustavo.kim@gmail.com', '1998-12-11', 'Desenvolvedor Pleno',10),
       ('Vitor', 'Mendes', 'vitor.mendes@gmail.com', '2003-10-31', 'Desenvolvedor Junuior',5),
	   ('Gustavo', 'Orlando', 'gustavo.orlando@gmail.com', '1998-12-11', 'Desenvolvedor Pleno',10),
	   ('Priscila', 'Mendes', 'priscila.mendes@gmail.com', '2003-10-31', 'Desenvolvedor Junuior,',3),
	   ('Betinha', 'Santos', 'betinha.santos@gmail.com', '1997-10-30', 'Recursos Humanos',1),
       ('Gabriela', 'Puscas', 'gabriela.puscas@gmail.com', '2004-10-31', 'Desenvolvedor Pleno',10),
       ('Alex', 'Pires', 'alex.pires@gmail.com', '2006-05-28', 'Estagiário ',3),
       ('Xuxa', 'Meneguel', 'xuxa.meneguel@gmail.com', '1980-02-29', 'Desenvolvedor Senior',1);

insert into Dependentes
(nome, dataNascimento, parentesco, fk_idFuncionario)
values ('Paco', '2001-02-03', 'Irmão',4),
('Peco', '2001-04-13', 'Irmão',5),
('Pico', '2004-05-03', 'Irmão',2),
('Puco', '2021-06-05', 'Primo',1),
('Puca', '2011-08-06', 'Filha',4),
('Poca', '2021-04-07', 'Filha',4),
('Pamco', '2001-02-08', 'Filho',8),
('Pembco', '1997-04-13', 'Irmão',1),
('Pimbco', '1960-02-04', 'Mãe',5),
('Kimmy', '1999-02-23', 'Irmã',6),
('Aaron', '2022-02-01', 'Filho', 10);

select 	   f.nome, f.sobrenome, f.cargo,
	       d.nome as 'nome do dependente', timestampdiff(year, d.dataNascimento, current_date())idade
from Funcionario as f
join dependentes as d on d.fk_idFuncionario = f.idFuncionario
where timestampdiff(year, d.dataNascimento, current_date()) >18;

 select * from funcionario
order by fkchefe;