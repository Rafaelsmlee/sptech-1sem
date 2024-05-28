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
('Piratas do Chapéu de Palha', 'Thousand Sunny'),
('Piratas Heart', 'Polar Tang'),
('Piratas do Barba Branca', 'Moby Dick'),
('Piratas do Roger', 'Oro Jackson'),
('Piratas Kid', 'Victoria Punk'),
('Piratas da Big Mom', 'Queen Mama Chanter'),
('Piratas das Feras', 'Mammoth'),
('Piratas do Ruivo', 'Red Force'),
('Piratas do Barba Negra', 'Saber of Xebec'),
('Piratas Donquixote', 'Numancia Flamingo'); 

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
('Hito Hito no Mi, Modelo: Nika', 'Ser Nika, Deus do Sol, corpo 100% borracha', 'Zoan Mítica'),
('Hito Hito no Mi', 'Usuário vira em híbrido humano à vontade', 'Zoan'),
('Hana Hana no Mi', 'Replica partes do corpo em objetos ou seres', 'Paramecia'),
('Yomi Yomi no Mi', 'Voltar à vida após a morte', 'Paramecia'),

('Ope Ope no Mi', 'Criar um espaço esférico ou "sala"', 'Paramecia'),

('Gura Gura no Mi', 'Cria vibrações ou tremores', 'Paramecia'),
('Tori Tori no Mi, Modelo: Fênix', 'Ser uma fênix híbrida ou completa à vontade', 'Zoan Mítica'),
('Mera Mera no Mi', 'Poder de chamas à vontade', 'Logia'),
('Kira Kira no Mi', 'Transformar seu corpo em diamante', 'Paramecia'),
('Poke Poke no Mi', 'Criar bolsos no corpo', 'Paramecia'),

('Jiki Jiki no Mi', 'Manipular as forças magnéticas e o metal a vontade', 'Paramecia'),

('Soru Soru no Mi', 'Manipular e interagir livremente com almas humanas', 'Paramecia'),
('Mochi Mochi no Mi', 'Criar, controlar e se transformar em massa', 'Paramecia'),
('Bisu Bisu no Mi', 'Criar, controlar biscoitos', 'Paramecia'),
('Shibo Shibo no Mi', 'Drenar líquidos de coisas vivas e não vivas', 'Paramecia'),
('Pero Pero no Mi', 'Criar, controlar e moldar doce', 'Paramecia'),
('Tama Tama no Mi', 'Faz seu corpo ter composição semelhante a de um ovo', 'Paramecia'),
('Kame Kame no Mi', 'Capacidade de se transformar em tartaruga', 'Zoan'),
('Buku Buku no Mi', 'Manipular livros', 'Paramecia'),

('Uo Uo no Mi, Modelo: Seiryu', 'Poderes de dragão azul', 'Zoan Mítica'),
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

(2, 5, NULL, 'Trafalgar D. Water Law', 3000000000, '1995-10-06', 191),
(2, NULL, 11, 'Bepo', 500, '1999-11-20', 240),
(2, NULL, 11, 'Shachi', NULL, '1994-04-07', NULL),
(2, NULL, 11, 'Penguin', NULL, '1994-04-07', NULL),

(3, 6, NULL, 'Edward Newgate', 5046000000, '1950-04-06', 641),
(3, 7, 15, 'Marco', 1374000000, '1976-10-05', 203),
(3, 8, 15, 'Portgas D. Ace', 550000000, '2002-01-20', 185),
(3, 9, 15, 'Jozu', NULL, '1979-11-11', 503),
(3, NULL, 15, 'Vista', NULL, '1975-02-05', 328),
(3, 10, 15, 'Blamenco', NULL, '1987-02-05', NULL),
(3, NULL, 15, 'Rakuyo', NULL, '1967-09-08', NULL),
(3, NULL, 15, 'Izo', 510000000, '1976-10-13', 192),

(4, NULL, NULL, 'Gol D. Roger', 5564800000, '1968-12-31', 274),
(4, NULL, 23, 'Silvers Rayleigh', NULL, '1943-05-13', 188),
(4, NULL, 23, 'Taro', 90000000, NULL, NULL),
(4, NULL, 23, 'Mr. Momora', 30000000, NULL, NULL),
(4, NULL, 23, 'Erio', 10000000, NULL, NULL),
(4, NULL, 23, 'Crocus', NULL, '1948-06-04', 203),

(5, 11, NULL, 'Eustass Kid', 3000000000, '1999-01-10', 205),
(5, NULL, 29, 'Killer', 200000000, '1995-02-02', 195),

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

(8, NULL, NULL, 'Shanks', 4048900000, '1983-03-09', 199),
(8, NULL, 52, 'Benn Beckman', NULL, '1971-11-09', 206),
(8, NULL, 52, 'Lucky Roux', NULL, '1986-07-06', 241),
(8, NULL, 52, 'Yasopp', NULL, '1974-08-02', 183),

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
descricao varchar(100) not null,

primary key (idObjetivo)
);

insert into objetivo 
(descricao)
values
('Tornar-se o Rei dos Piratas.'),
('Encontrar o One Piece.'),
('Tornar-se o maior espadachim do mundo.'),
('Desenhar um mapa completo do mundo.'),
('Tornar-se um bravo guerreiro do mar e viajar pelos mares.'),
('Encontrar o lendário All Blue, um mar que contém todos os tipos de peixe.'),
('Tornar-se um grande médico e curar todas as doenças.'),
('Descobrir a verdade sobre o século perdido e a história do mundo.'),
('Construir e navegar em um navio que dará a volta ao mundo.'),
('Encontrar a Ilha dos Prometidos, onde espera reencontrar Laboon.'),
('Criar um mundo onde humanos e peixes possam viver juntos em harmonia.'),
('Descobrir uma forma de vingar a destruição de sua cidade natal.'),
('Ajudar seu capitão, Law, a alcançar seus objetivos.'),
('Seguir seu capitão e cumprir seus desejos.'),
('Encontrar a verdadeira família e conquistar o mundo.'),
('Proteger e manter a Whitebeard Pirates.'),
('Encontrar sua própria liberdade'),
('Proteger sua família'),
('Desvendar os segredos do mundo.'),
('Apoiar Gol D. Roger em sua jornada.'), 
('Proteger e cuidar da Grand Line.'),
('Apoiar Eustass Kid em sua jornada.'),
('Criar um país onde todos os tipos de pessoas possam viver felizes.'),
('Proteger sua mãe, Big Mom'),
('Provar sua força e lealdade a Big Mom.'),
('Alcançar uma posição de destaque dentro da Big Mom Pirates.'),
('Proteger os interesses da Big Mom Pirates.'),
('Servir lealmente a Big Mom Pirates e promover seus interesses.'),
('Proteger a ilha de Totto Land e seus habitantes.'),
('Criar um mundo onde só os mais fortes sobrevivem.'),
('Proteger e servir Kaidou como um dos Calamidades.'),
('Provar sua força e lealdade a Kaidou.'),
('Tornar-se um pirata poderoso e temido.'),
('Sobreviver e encontrar um destino favorável.'),
('Proteger e promover a era de piratas.'),
('Apoiar e proteger seu capitão, Shanks.'),
('Acompanhar seu capitão, Shanks, e desfrutar da vida de pirata.'),
('Tornar-se o maior atirador do mundo e encontrar seu filho, Usopp.'),
('Apoiar Marshall D. Teach em sua jornada para se tornar o Rei dos Piratas.'),
('Tornar-se o atirador mais poderoso do mundo.'),
('Provar sua lealdade e habilidade como parte da Blackbeard Pirates.'),
('Tornar-se o governante absoluto do mundo subterrâneo.'),
('Proteger e apoiar Donquixote Doflamingo.'),
('Proteger seu irmão, Law, e acabar com o comércio ilegal de armas.'),
('Realizar sua arte e tornar-se reconhecida como uma grande artista.'), 
('Proteger e ajudar sua família e seu país.');

create table pirataObjetivo (
fkPirata int,
fkObjetivo int,

primary key (fkPirata, fkObjetivo),
foreign key (fkPirata) references pirata (idPirata),
foreign key (fkObjetivo) references objetivo (idObjetivo)

);

insert into pirataObjetivo
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