/*
-- Qual é o nome e a recompensa do capitão dos Chapéu de Palha?
select * from pirata;
select recompensa, nome from pirata
where nome = 'Monkey D. Luffy';

-- Mostre o nome e a recompensa (em reais)do capitão dos Chapéu de Palha?
-- 1 belli == R$ 4
select recompensa * 4 as Reais from pirata
where nome = 'Monkey D. Luffy';

select concat('R$ ', substring(recompensa \ *4, 1, 1), '.', substring(recompensa * 4, 2, 3), '.', substring(recompensa \ *4, 5, 3), '.', substring(recompensa * 4, 8, 3)) as Reais from pirata
where nome = 'Monkey D. Luffy';

-- 6.000.000.000
/
/
PERGUNTAS!!

Exiba todos os piratas do primeiro bando pirata cadastrado.

Exiba todos os piratas que tenham comido umafruta, independente do bando.

/
/
-- exibindo a idade que cada um tinha em 22 de janeiro de 2022:

select concat(timestampdiff(year, '2002-05-05', '2022-01-22'), ' anos') as Luffy;
select concat(timestampdiff(year, '2000-11-11', '2022-01-22'), ' anos') as Zoro;
select concat(timestampdiff(year, '2001-07-03', '2022-01-22'), ' anos') as Nami;
select concat(timestampdiff(year, '2002-04-01', '2022-01-22'), ' anos') as Usopp;
select concat(timestampdiff(year, '2000-03-02', '2022-01-22'), ' anos') as Sanji;
select concat(timestampdiff(year, '2004-12-24', '2022-01-22'), ' anos') as Chopper;
select concat(timestampdiff(year, '1991-02-06', '2022-01-22'), ' anos') as 'Nico Robin';
select concat(timestampdiff(year, '1985-03-09', '2022-01-22'), ' anos') as Franky;
select concat(timestampdiff(year, '1931-04-03', '2022-01-22'), ' anos') as Brooky;
select concat(timestampdiff(year, '1975-04-02', '2022-01-22'), ' anos') as Jinbei;

select concat(timestampdiff(year, '1995-10-06', '2022-01-22'), ' anos') as Law;
select concat(timestampdiff(year, '1999-11-20', '2022-01-22'), ' anos') as Bepo;
select concat(timestampdiff(year, '1994-04-07', '2022-01-22'), ' anos') as Shachi;
select concat(timestampdiff(year, '1994-04-07', '2022-04-25'), ' anos') as Penguin;

select concat(timestampdiff(year, '1950-04-06', '2022-04-25'), ' anos') as 'Edward Newgate';
select concat(timestampdiff(year, '1976-10-05', '2022-04-25'), ' anos') as Marco;
select concat(timestampdiff(year, '2002-01-20', '2022-04-25'), ' anos') as Ace;
select concat(timestampdiff(year, '1979-11-11', '2022-04-25'), ' anos') as Jozu;
select concat(timestampdiff(year, '1975-02-05', '2022-04-25'), ' anos') as Vista;
select concat(timestampdiff(year, '1987-02-05', '2022-04-25'), ' anos') as Blamenco;
select concat(timestampdiff(year, '1967-09-08', '2022-04-25'), ' anos') as Rakuyo;
select concat(timestampdiff(year, '1976-10-13', '2022-04-25'), ' anos') as Izo;
select concat(timestampdiff(year, '1968-12-31', '2022-04-25'), ' anos') as Roger;
select concat(timestampdiff(year, '1943-05-13', '2022-04-25'), ' anos') as Rayleigh;
select concat(timestampdiff(year, '1948-06-04', '2022-04-25'), ' anos') as crocus;
select concat(timestampdiff(year, '1999-01-10', '2022-04-25'), ' anos') as kid;
select concat(timestampdiff(year, '1995-02-02', '2022-04-25'), ' anos') as killer;
select concat(timestampdiff(year, '1954-02-15', '2022-04-25'), ' anos') as bigmom;
select concat(timestampdiff(year, '1973-11-25', '2022-04-25'), ' anos') katakuri;
select concat(timestampdiff(year, '1977-02-28', '2022-04-25'), ' anos') cracker;
select concat(timestampdiff(year, '1986-10-12', '2022-04-25'), ' anos') Smoothie;
select concat(timestampdiff(year, '1972-03-14', '2022-04-25'), ' anos') perospero;
select concat(timestampdiff(year, '1984-04-23', '2022-04-25'), ' anos') "Mont-d'Or";
select concat(timestampdiff(year, '1962-05-01', '2022-04-25'), ' anos') kaidou;
select concat(timestampdiff(year, '1974-12-01', '2022-04-25'), ' anos') king;
select concat(timestampdiff(year, '1965-08-31', '2022-04-25'), ' anos') queen;
select concat(timestampdiff(year, '1993-09-28', '2022-04-25'), ' anos') jack;
select concat(timestampdiff(year, '1984-03-15', '2022-04-25'), ' anos') "Who's Who";
select concat(timestampdiff(year, '1992-09-24', '2022-04-25'), ' anos') 'black maria';
select concat(timestampdiff(year, '1988-02-03', '2022-04-25'), ' anos') Sasaki;
select concat(timestampdiff(year, '2000-01-04', '2022-04-25'), ' anos') Ulti;
select concat(timestampdiff(year, '2002-02-10', '2022-04-25'), ' anos') pageOne;
select concat(timestampdiff(year, '1991-03-19', '2022-04-25'), ' anos') 'Scratchmen Apoo';
select concat(timestampdiff(year, '1990-09-09', '2022-04-25'), ' anos') 'Basil Hawkins';
select concat(timestampdiff(year, '1983-03-09', '2022-04-25'), ' anos') shanks;
select concat(timestampdiff(year, '1971-11-09', '2022-04-25'), ' anos') 'Benn Beckman';
select concat(timestampdiff(year, '1986-07-06', '2022-04-25'), ' anos') 'Lucky Roux';
select concat(timestampdiff(year, '1974-08-02', '2022-04-25'), ' anos') YASOPP;
select concat(timestampdiff(year, '1981-08-03', '2022-04-25'), ' anos') teach;
select concat(timestampdiff(year, '1992-12-25', '2022-04-25'), ' anos') 'Jesus Burgess';
select concat(timestampdiff(year, '1977-06-11', '2022-04-25'), ' anos') shiryu;
select concat(timestampdiff(year, '1994-10-05', '2022-04-25'), ' anos') vanAugur;
select concat(timestampdiff(year, '1979-09-30', '2022-04-25'), ' anos') AvaloPizarro;
select concat(timestampdiff(year, '1981-03-13', '2022-04-25'), ' anos') Laffitte;
select concat(timestampdiff(year, '1986-03-29', '2022-04-25'), ' anos') catarinaDevon;
select concat(timestampdiff(year, '1923-03-02', '2022-04-25'), ' anos') sanjuanWolf;
select concat(timestampdiff(year, '1983-08-05', '2022-04-25'), ' anos') vascoShot;
select concat(timestampdiff(year, '1993-10-18', '2022-04-25'), ' anos') 'Doc Q';
select concat(timestampdiff(year, '1972-09-21', '2022-04-25'), ' anos') Kuzan;
select concat(timestampdiff(year, '1980-10-23', '2022-04-25'), ' anos') Doflamingo;
select concat(timestampdiff(year, '1973-03-18', '2022-04-25'), ' anos') Trebol;
select concat(timestampdiff(year, '1976-05-29', '2022-04-25'), ' anos') Diamante;
select concat(timestampdiff(year, '1981-12-14', '2022-04-25'), ' anos') Pica;
select concat(timestampdiff(year, '1980-07-05', '2022-04-25'), ' anos') VERGO;
select concat(timestampdiff(year, '1995-07-15', '2022-04-25'), ' anos') Rosinante;
select concat(timestampdiff(year, '1999-10-22', '2022-04-25'), ' anos') Sugar;
select concat(timestampdiff(year, '1961-01-25', '2022-04-25'), ' anos') Jora;
select concat(timestampdiff(year, '1992-04-30', '2022-04-25'), ' anos') Viola;
select concat(timestampdiff(year, '1951-10-07', '2022-04-25'), ' anos') 'Lao G';
select concat(timestampdiff(year, '1975-06-12', '2022-04-25'), ' anos') 'Senor Pink';
select concat(timestampdiff(year, '1969-08-13', '2022-04-25'), ' anos') Machvise;
select concat(timestampdiff(year, '2005-08-11', '2022-04-25'), ' anos') Dellinger;

-- exibindo a idade que cada um tem hoje:
-- 							       Data NASC  , DATA ATUAL
select concat(timestampdiff(year, '2002-05-05', now()), ' anos') as Luffy;
select concat(timestampdiff(year, '2000-11-11', now()), ' anos') as Zoro;
select concat(timestampdiff(year, '2001-07-03', now()), ' anos') as Nami;
select concat(timestampdiff(year, '2002-04-01', now()), ' anos') as Usopp;
select concat(timestampdiff(year, '2000-03-02', now()), ' anos') as Sanji;
select concat(timestampdiff(year, '2004-12-24', now()), ' anos') as Chopper;
select concat(timestampdiff(year, '1991-02-06', now()), ' anos') as 'Nico Robin';
select concat(timestampdiff(year, '1985-03-09', now()), ' anos') as Franky;
select concat(timestampdiff(year, '1931-04-03', now()), ' anos') as Brooky;
select concat(timestampdiff(year, '1975-04-02', now()), ' anos') as Jinbei;

*/
-- select concat(timestampdiff(year, '2005-08-11', '2022-04-25'), ' anos') Dellinger;

-- drop database gameselect;
create database gameselect;
USE gameselect;

CREATE TABLE bandopirata (
idBando int auto_increment,
nome varchar(45) not null,
navioPrincipal varchar(45) not null,

primary key (idBando)
);

insert into bandopirata
(nome, navioPrincipal)
values
('Piratas do Chapéu de Palha', 'Thousand Sunny'), -- luffy
('Piratas Heart', 'Polar Tang'), -- law
('Piratas do Barba Branca', 'Moby Dick'), -- barba branca
('Piratas do Roger', 'Oro Jackson'), -- Gol D. Roger
('Piratas Kid', 'Victoria Punk'), -- Eustass Kid
('Piratas da Big Mom', 'Queen Mama Chanter'), -- Big Mom
('Piratas das Feras', 'Mammoth'), -- Kaidou
('Piratas do Ruivo', 'Red Force'), -- Shanks
('Piratas do Barba Negra', 'Saber of Xebec'), -- Barba Negra
('Piratas Donquixote', 'Numancia Flamingo'); -- Doflamingo

create table frutadiabo (
idFruta int auto_increment,
nome varchar(50) not null,
poder varchar(100) not null,
tipo varchar(45) not null,

primary key (idFruta)
);

insert into frutadiabo
(nome, poder, tipo)
values
-- Akuma no Mi's do bando do Luffy:
('Hito Hito no Mi, Modelo: Nika', 'Ser Nika, Deus do Sol, corpo 100% borracha', 'Zoan Mítica'),
('Hito Hito no Mi', 'Usuário vira em híbrido humano à vontade', 'Zoan'),
('Hana Hana no Mi', 'Replica partes do corpo em objetos ou seres', 'Paramecia'),
('Yomi Yomi no Mi', 'Voltar à vida após a morte', 'Paramecia'),
-- Akuma no Mi's do bando do Law:
('Ope Ope no Mi', 'Criar um espaço esférico ou "sala"', 'Paramecia'),
-- Akuma no Mi's do bando do Barba Branca:
('Gura Gura no Mi', 'Cria vibrações ou tremores', 'Paramecia'),
('Tori Tori no Mi, Modelo: Fênix', 'Ser uma fênix híbrida ou completa à vontade', 'Zoan Mítica'),
('Mera Mera no Mi', 'Poder de chamas à vontade', 'Logia'),
('Kira Kira no Mi', 'Transformar seu corpo em diamante', 'Paramecia'),
('Poke Poke no Mi', 'Criar bolsos no corpo', 'Paramecia'),
-- Akuma no Mi's dos piratas Kid:
('Jiki Jiki no Mi', 'Manipular as forças magnéticas e o metal a vontade', 'Paramecia'),
-- Akuma no Mi's dos piratas da big mom:
('Soru Soru no Mi', 'Manipular e interagir livremente com almas humanas', 'Paramecia'),
('Mochi Mochi no Mi', 'Criar, controlar e se transformar em massa', 'Paramecia'),
('Bisu Bisu no Mi', 'Criar, controlar biscoitos', 'Paramecia'),
('Shibo Shibo no Mi', 'Drenar líquidos de coisas vivas e não vivas', 'Paramecia'),
('Pero Pero no Mi', 'Criar, controlar e moldar doce', 'Paramecia'),
('Tama Tama no Mi', 'Faz seu corpo ter composição semelhante a de um ovo', 'Paramecia'),
('Kame Kame no Mi', 'Capacidade de se transformar em tartaruga', 'Zoan'),
('Buku Buku no Mi', 'Manipular livros', 'Paramecia'),
-- Akuma no Mi's dos piratas das feras:
('Uo Uo no Mi, Modelo: Seiryu', 'Poderes de dragão azul', 'Zoan Mítica'), -- 20ª fruta
('Ryu Ryu no Mi, Modelo: Pteranodonte', 'Poderes de pteranodonte', 'Zoan Ancestral'),
('Ryu Ryu no Mi, Modelo: Braquiossauro', 'Poderes de braquiossauro', 'Zoan Ancestral'),
('Zou Zou no Mi, Modelo: Mamute', 'Poderes de mamute', 'Zoan Ancestral'),
('Neko Neko no Mi, Modelo: Dentes de Sabre', 'Poderes de tigre dentes de sabre', 'Zoan Ancestral'),
('Kumo Kumo no Mi, Modelo: Rosamygale Grauvogeli', 'Poderes de uma espécie de aranha (Rosamygale Grauvogeli)', 'Zoan Antigo'),
('Ryu Ryu no Mi, Modelo: Triceratops', 'Poderes de um triceratops', 'Zoan Ancestral'),
('Ryu Ryu no Mi, Modelo: Paquicefalossauro', 'Poderes de um paquicefalossauro', 'Zoan Ancestral'),
('Ryu Ryu no Mi, Modelo: Espinossauro', 'Poderes de um espinossauro', 'Zoan Ancestral'),
('Oto Oto no Mi', 'Transformar partes do corpo em instrumentos musicais, tocar música com efeitos destrutivos', 'Paramecia'),
('Wara Wara no Mi', 'Criar, manipular palha à vontade', 'Paramecia'),
-- Akuma no Mi's dos piratas do ruivo:
-- NÃO EXISTEM USUÁRIOS DE Akuma no Mi no bando do ruivo...
-- Akuma no Mi's dos piratas do Barba Negra:
('Yami Yami no Mi', 'Criar, controlar as trevas à vontade', 'Logia'),
('Riki Riki no Mi', 'Concede força sobre-humana', 'Paramecia'),
('Suke Suke no Mi', 'Transformar a si mesmo e tudo que tocar invisível', 'Paramecia'),
('Wapu Wapu no Mi', 'Permite teletransportar a si mesmo ou outras pessoas de um local para outro', 'Paramecia'),
('Shima Shima no Mi', 'Permite fundir seu próprio corpo com o ambiente de uma ilha', 'Paramecia'),
('Inu Inu no Mi, Modelo: Kyubi no Kitsune', 'Permite se transformar em uma raposa de nove caudas', 'Zoan Mítica'),
('Deka Deka no Mi', 'Permite o usuário aumentar seu tamanho', 'Paramecia'),
('Gabu Gabu no Mi', 'Torna o usuário um Humano-Licor', 'Paramecia'),
('Shiku Shiku no Mi', 'Permite o usuário aflingir outras pessoas com doenças', 'Paramecia'),
('Hie Hie no Mi', 'Criar, controlar, se transformar em gelo', 'Logia'),
('Uma Uma no Mi, Modelo: Pegasus', 'Habilidade de se transformarem em Pégaso', 'Zoan Mítica'),
-- Akuma no Mi's dos piratas Donquixote:
('Ito Ito no Mi', 'Criar, manipular fios extremamente finos ao olho nú', 'Paramecia'),
('Beta Beta no Mi', 'Criar, controlar uma espécia de substância pegajosa e explosiva', 'Paramecia'),
('Hira Hira no Mi', 'Permite que o usuário faça qualquer coisa que tocam plano e vibra como pano ou uma bandeira', 'Paramecia'),
('Ishi Ishi no Mi', 'Absorver, manipular e mesclar-se com pedras', 'Paramecia'),
('Nagi Nagi no Mi', 'Anular os sons do ambiente ao seu redor', 'Paramecia'),
('Hobi Hobi no Mi', 'Transformar pessoas vivas em brinquedos, apagar memórias de suas existências de outras pessoas', 'Paramecia'),
('Ato Ato no Mi', 'Transformar pessoas e objetos em arte', 'Paramecia'),
('Giro Giro no Mi', 'Ver através de tudo, enxergar coisas a longas distâncias, ver dentro da mente das pessoas', 'Paramecia'),
('Sui Sui no Mi', 'Nadar no chão como se fosse água', 'Paramecia'),
('Ton Ton no Mi', 'Aumenta seu peso e também flutuar', 'Paramecia');

create table pirata (
idPirata 		int auto_increment,
fkBandoPirata 	int 		  not null,
fkFruta 		int 		  null,
fkCapitao 		int 		  null,
nome 			varchar(45)   not null,
recompensa 		bigint	  	  null,
dtNascimento 	DATE	  	  null,
altura 			FLOAT 		  null,

primary key (idPirata),
unique key (idPirata, fkFruta),
foreign key (fkBandoPirata) references bandopirata (idBando),
foreign key (fkFruta) references frutadiabo (idFruta),
foreign key (fkCapitao) references pirata (idPirata)

);

insert into pirata
(fkBandoPirata, fkFruta, fkCapitao, nome, recompensa, dtNascimento, altura)
values
-- piratas do chapéu de palha:
(1, 1, NULL, 'Monkey D. Luffy', 3000000000, '2002-05-05', 174),
(1, NULL, 1, 'Roronoa Zoro', 1111000000, '2000-11-11', 181),
(1, NULL, 1, 'Nami', 366000000, '2001-07-03', 170),
(1, NULL, 1, 'Usopp', 500000000, '2002-04-01', 176),
(1, NULL, 1, 'Vinsmoke Sanji', 1032000000, '2000-03-02', 180),
(1, 2, 1, 'Tony Tony Chopper', 1000, '2004-12-24', 90),
(1, 3, 1, 'Nico Robin', 930000000, '1991-02-06', 188),
(1, NULL, 1, 'Franky', 394000000, '1985-03-09', 240),
(1, 4, 1, 'Brook', 383000000, '1931-04-03', 277),
(1, NULL, 1, 'Jinbe', 1100000000, '1975-04-02', 301),
-- piratas heart:
(2, 5, NULL, 'Trafalgar D. Water Law', 3000000000, '1995-10-06', 191),
(2, NULL, 11, 'Bepo', 500, '1999-11-20', 240),
(2, NULL, 11, 'Shachi', NULL, '1994-04-07', NULL),
(2, NULL, 11, 'Penguin', NULL, '1994-04-07', NULL),
-- piratas do barba branca:
(3, 6, NULL, 'Edward Newgate', 5046000000, '1950-04-06', 641),
(3, 7, 15, 'Marco', 1374000000, '1976-10-05', 203),
(3, 8, 15, 'Portgas D. Ace', 550000000, '2002-01-20', 185),
(3, 9, 15, 'Jozu', NULL, '1979-11-11', 503),
(3, NULL, 15, 'Vista', NULL, '1975-02-05', 328),
(3, 10, 15, 'Blamenco', NULL, '1987-02-05', NULL),
(3, NULL, 15, 'Rakuyo', NULL, '1967-09-08', NULL),
(3, NULL, 15, 'Izo', 510000000, '1976-10-13', 192),
-- piratas do Roger:
(4, NULL, NULL, 'Gol D. Roger', 5564800000, '1968-12-31', 274),
(4, NULL, 23, 'Silvers Rayleigh', NULL, '1943-05-13', 188),
(4, NULL, 23, 'Taro', 90000000, NULL, NULL),
(4, NULL, 23, 'Mr. Momora', 30000000, NULL, NULL),
(4, NULL, 23, 'Erio', 10000000, NULL, NULL),
(4, NULL, 23, 'Crocus', NULL, '1948-06-04', 203),
-- piratas kid:
(5, 11, NULL, 'Eustass Kid', 3000000000, '1999-01-10', 205),
(5, NULL, 29, 'Killer', 200000000, '1995-02-02', 195),
-- piratas da big mom:
(6, 12, NULL, 'Charlotte Linlin', 4388000000, '1954-02-15', 880),
(6, 13, 31, 'Charlotte Katakuri', 1057000000, '1973-11-25', 509),
(6, 14, 31, 'Charlotte Cracker', 860000000, '1977-02-28', 307),
(6, 15, 31, 'Charlotte Smoothie', 932000000, '1986-10-12', 464),
(6, 16, 31, 'Charlotte Perospero', 700000000, '1972-03-14', 333),
(6, 17, 31, 'Tamago', 429000000, NULL, NULL),
(6, 18, 31, 'Pekoms', 330000000, NULL, NULL),
(6, NULL, 31, 'Bobbin', 105500000, NULL, NULL),
(6, NULL, 31, 'Charlotte Amande', NULL, NULL, NULL),
(6, 19 , 31, "Charlotte Mont-d'Or", 120000000, '1984-04-23', 260),
-- piratas das feras:
(7, 20, NULL, 'Kaidou', 4611100000, '1962-05-01', 710),
(7, 21, 41, 'King', 1390000000, '1974-12-01', 613),
(7, 22, 41, 'Queen', 1320000000, '1965-08-31', NULL),
(7, 23, 41, 'Jack', 1000000000, '1993-09-28', 830),
(7, 24, 41, "Who's-Who", 546000000, '1984-03-15', 336),
(7, 25, 41, 'Black Maria', 480000000, '1992-09-24', 820),
(7, 26, 41, 'Sasaki', 472000000, '1988-02-03', 318),
(7, 27, 41, 'Ulti', 400000000, '2000-01-04', 173),
(7, 28, 41, 'Page One', 290000000, '2002-02-10', 171),
(7, 29, 41, 'Scratchmen Apoo', 350000000, '1991-03-19', 256),
(7, 30, 41, 'Basil Hawkins', 320000000, '1990-09-09', 210),
-- piratas do ruivo:
(8, NULL, NULL, 'Shanks', 4048900000, '1983-03-09', 199), -- 52º pirata
(8, NULL, 52, 'Benn Beckman', NULL, '1971-11-09', 206),
(8, NULL, 52, 'Lucky Roux', NULL, '1986-07-06', 241),
(8, NULL, 52, 'Yasopp', NULL, '1974-08-02', 183),
-- piratas do Barba Negra:
(9, 31, NULL, 'Marshall D. Teach', 3996000000, '1981-08-03', 344),
(9, 32, 56, 'Jesus Burgess', 20000000, '1992-12-25', 355),
(9, 33, 56, 'Shiryu', NULL, '1977-06-11', 340),
(9, 34, 56, 'Van Augur', 64000000, '1994-10-05', 340),
(9, 35, 56, 'Avalo Pizarro', NULL, '1979-09-30', 505),
(9, NULL, 56, 'Laffitte', 42200000, '1981-03-13', 340),
(9, 36, 56, 'Catarina Devon', NULL, '1986-03-29', 361),
(9, 37, 56, 'Sanjuan Wolf', NULL, '1923-03-02', 1800),
(9, 38, 56, 'Vasco Shot', NULL, '1983-08-05', 573),
(9, 39, 56, 'Doc Q', 72000000, '1993-10-18', 342),
(9, 40, 56, 'Kuzan (Aokiji)', NULL, '1972-09-21', 298),
(9, 41, 56, 'Stronger', NULL, '1993-04-16', NULL),
-- piratas Donquixote:
(10, 42, NULL, 'Donquixote Doflamingo', 340000000, '1980-10-23', 305),
(10, 43, 68, 'Trebol', 99000000, '1973-03-18', 349),
(10, 44, 68, 'Diamante', 99000000, '1976-05-29', 525),
(10, 45, 68, 'Pica', 99000000, '1981-12-14', 470),
(10, NULL, 68, 'Vergo', NULL, '1980-07-05', 247),
(10, 46, 68, 'Donquixote Rosinante', NULL, '1995-07-15', 293),
(10, 47, 68, 'Sugar', NULL, '1999-10-22', 110),
(10, 48, 68, 'Jora', NULL, '1961-01-25', 221),
(10, 49, 68, 'Viola', NULL, '1992-04-30', 190),
(10, NULL, 68, 'Lao G', 61000000, '1951-10-07', 157),
(10, 50, 68, 'Señor Pink', 58000000, '1975-06-12', NULL),
(10, 51, 68, 'Machvise', NULL, '1969-08-13', 440),
(10, NULL, 68, 'Dellinger', 15000000, '2005-08-11', 145);


create table objetivo (
idObjetivo int auto_increment,
descricao varchar(100),

primary key (idObjetivo)
);

insert into objetivo 
(descricao)
values
('Tornar-se o Rei dos Piratas.'), -- Luffy, Eustass Kid, Barba Negra
('Encontrar o One Piece.'), -- Luffy, Gol D. Roger
('Tornar-se o maior espadachim do mundo.'), -- Zoro, Shiryu 
('Desenhar um mapa completo do mundo.'), -- Nami
('Tornar-se um bravo guerreiro do mar e viajar pelos mares.'), -- Usopp
('Encontrar o lendário All Blue, um mar que contém todos os tipos de peixe.'), -- Sanji
('Tornar-se um grande médico e curar todas as doenças.'), -- Chopper
('Descobrir a verdade sobre o século perdido e a história do mundo.'), -- Nico Robin
('Construir e navegar em um navio que dará a volta ao mundo.'),  -- Franky
('Encontrar a Ilha dos Prometidos, onde espera reencontrar Laboon.'), -- Brook
('Criar um mundo onde humanos e peixes possam viver juntos em harmonia.'), -- Jinbe
('Descobrir uma forma de vingar a destruição de sua cidade natal.'), -- Law
('Ajudar seu capitão, Law, a alcançar seus objetivos.'), -- Bepo
('Seguir seu capitão e cumprir seus desejos.'), -- Shachi e Penguin
('Encontrar a verdadeira família e conquistar o mundo.'), -- Barba Branca
('Proteger e manter a Whitebeard Pirates.'), -- Marco, Jozu, Vista, Blamenco, Rakuyo, Izo
('Encontrar sua própria liberdade'), -- Ace
('Proteger sua família'), -- Ace, Jozu, Katakuri, Perospero
('Desvendar os segredos do mundo.'), -- Roger
('Apoiar Gol D. Roger em sua jornada.'), -- Rayleigh 
('Proteger e cuidar da Grand Line.'), -- Crocus
('Apoiar Eustass Kid em sua jornada.'), -- Killer
('Criar um país onde todos os tipos de pessoas possam viver felizes.'), -- Big Mom
('Proteger sua mãe, Big Mom'), -- Charlotte Katakuri
('Provar sua força e lealdade a Big Mom.'), -- Charlotte Cracker
('Alcançar uma posição de destaque dentro da Big Mom Pirates.'), -- Charlotte Smoothie
('Proteger os interesses da Big Mom Pirates.'), -- Charlotte Perospero
('Servir lealmente a Big Mom Pirates e promover seus interesses.'), -- Tamago, Pekoms, Bobbin, Charlotte Amande
('Proteger a ilha de Totto Land e seus habitantes.'), -- Charlotte Mont-d'Or
('Criar um mundo onde só os mais fortes sobrevivem.'), -- Kaidou
('Proteger e servir Kaidou como um dos Calamidades.'), -- King, Queen
('Provar sua força e lealdade a Kaidou.'), -- Jack
('Tornar-se um pirata poderoso e temido.'), -- Scratchmen Apoo
('Sobreviver e encontrar um destino favorável.'), -- Basil Hawkins
('Proteger e promover a era de piratas.'), -- Shanks
('Apoiar e proteger seu capitão, Shanks.'), -- Benn Beckman
('Acompanhar seu capitão, Shanks, e desfrutar da vida de pirata.'), -- Lucky Roux
('Tornar-se o maior atirador do mundo e encontrar seu filho, Usopp.'), -- Yasopp 
('Apoiar Marshall D. Teach em sua jornada para se tornar o Rei dos Piratas.'), -- Jesus Burgess
('Tornar-se o atirador mais poderoso do mundo.'), -- Van Augur
('Provar sua lealdade e habilidade como parte da Blackbeard Pirates.'), -- Laffitte, Vasco Shot, Doc Q 
('Tornar-se o governante absoluto do mundo subterrâneo.'), -- Donquixote Doflamingo
('Proteger e apoiar Donquixote Doflamingo.'), -- Trebol, Diamante, Pica, Vergo, Sugar, Lao G, Machvise, Dellinger
('Proteger seu irmão, Law, e acabar com o comércio ilegal de armas.'), -- Corazon
('Realizar sua arte e tornar-se reconhecida como uma grande artista.'), -- Jora 
('Proteger e ajudar sua família e seu país.'); -- Viola 

create table pirataObjetivo (
fkPirata int,
fkObjetivo int,

primary key (fkPirata, fkObjetivo),
foreign key (fkPirata) references pirata (idPirata),
foreign key (fkObjetivo) references objetivo (idObjetivo)

);

insert into pirataObjetivo -- pode ser umas 71 linhas
(fkPirata, fkObjetivo)
values
(1, 1),
(29, 1),
(56, 1),

(1, 2),
(23, 2),

(2, 3),
(58, 3),

(3, 4),

(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12),
(12, 13),
(13, 14),
(14, 14),
(15, 15),
(16, 16),
(18, 16),
(19, 16),
(20, 16),
(21, 16),
(22, 16),
(17, 17),
(17, 18),
(18, 18),
(32, 18),
(35, 18),
(23, 19),
(24, 20),
(28, 21),
(30, 22),
(31, 23),
(32, 24),
(33, 25),
(34, 26),
(35, 27),
(36, 28),
(37, 28),
(38, 28),
(39, 28),
(40, 29),
(41, 30),
(42, 31),
(43, 31),
(44, 32),
(50, 33),
(51, 34),
(52, 35),
(53, 36),
(54, 37),
(55, 38),
(57, 39),
(59, 40),
(61, 41),
(64, 41),
(65, 41),
(68, 42),
(69, 43),
(70, 43),
(71, 43),
(72, 43),
(74, 43),
(77, 43),
(79, 43),
(80, 43),
(73, 44),
(75, 45),
(76, 46);

select * from pirata;
select * from objetivo;
select * from frutaDiabo;
select * from pirataObjetivo;

-- Qual é o nome e a recompensa do capitão dos Chapéu de Palha?

select recompensa, nome from pirata
where nome = 'Monkey D. Luffy';

/*
-- Mostre o nome e a recompensa (em reais) do capitão dos Chapéu de Palha?
-- 1 belli == R$ 4
select nome, recompensa * 4 as Reais from pirata
where nome = 'Monkey D. Luffy';

-- Mostre o nome e a recompensa (em reais, no formato BRL) do capitão dos Chapéu de Palha.
-- Valor a ser exibido: R$ 1.200.000.000 (NÃO DEIXAR ISSO AQUI A AMOSTRA)
select 
	nome, 
	concat('R$ ', substring(recompensa * 4, 1, 1), '.', substring(recompensa * 4, 2, 3), '.', substring(recompensa * 4, 5, 3), '.', substring(recompensa * 4, 8, 3)) as Reais from pirata
where nome = 'Monkey D. Luffy';
*/

/*
-- Pergunta 1
Shanks é um dos personagens mais queridos e respeitados da série ao ponto que virou objetivo proteger os seus sonhos.
Retorne todos os sonhos que envolvem Shanks. 


-- Pergunta 2
Ordene todos os piratas por ordem de nascimento que possuem uma recompensa maior que 1 000 000 000


-- Pergunta 3
As frutas do diabo são a principal origem dos poderes dos personagens do One Piece, mas há frutas como poderes com elementos parecidos.
Mostre apenas o nome e o tipo das frutas que concedem poder de fogo ou lava.


-- Pergunta 4
Mostre todas as frutas que não são do tipo Zoan.


-- Pergunta 5

Quais são os piartas que nasceram após 1997 e que não possuem nenhuma recompensa

-- Média

-- Pergunta 1
Mostre os piratas que possuem a menor e a maior recompensa que comeram uma fruta do tipo Zoan Mítica 

-- Pergunta 2
Quais o pirata mais alto que possúi como objetvio se tornar o rei dos piratas e qual a sua recompensa?

