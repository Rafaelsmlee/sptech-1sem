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

-- ========================================================
-- 				PERGUNTAS SELECIONADAS
-- ========================================================

-- 1. Selecione os piratas que nasceram em 2002 e que tenha uma recompensa maior de '930000000' belli 
SELECT *
FROM pirata 
WHERE dtNascimento BETWEEN '2002-01-01' and '2002-12-31'
AND recompensa > 93000000;

-- 2. Selecione os piratas que nasceram no mês de julho e que termine com a letra "i" de forma crescente 
SELECT * 
FROM pirata 
WHERE dtNascimento like '_____07%'
  AND nome LIKE '%i'
ORDER BY nome ASC;

-- 3. Selecione o nome da fruta, o poder, e o tipo que ela pertence somente onde a fruta for do modelo "Rosamygale Grauvogeli", ou as frutas que tem como terceira letra do nome 'u' 
-- e a antepenúltima letra do nome seja "a".
select 
    nome,
    poder,
    tipo
from frutaDiabo
where nome LIKE '%Rosamygale Grauvogeli%' OR nome LIKE '__u%' AND nome LIKE '%a___';

-- 4. Selecione o nome, recompensa (convertida de Belly para reais, supondo que 1 Belly seja igual a R$ 0,25), data de nascimento, e altura convertida em 
-- micrômetro (sabendo que está em centímetros, e que 1 centímetro é igual a 10000 micrômetros), apenas onde a recompensa é menor que 1001 Bellys ou para 
-- os piratas que nasceram entre 1997 (que foi justamente no ano em que One Piece teve sua origem) e 2024 ou um dos mais velhos piratas que nasceu no ano de 1923 no mês de março e no dia 2.
-- Ordenado pela data de nascimento, em ordem dos mais velho para o mais novo.
select 
    nome,
    recompensa / 4,
    dtNascimento,
    altura * 10000
from pirata
where recompensa < 1001 or dtNascimento between 1997 and 2024 or dtNascimento = '1923-03-02'
order by dtNascimento;

-- 5. Exiba o id da fruta, nome da fruta, seu poder, e seu tipo, apenas o top 5, onde os poderes das frutas podem ser capazes de: ou criar algo, ou controlar algo, ou se transformar 
-- em algo. Ordenando pelo id da fruta em ordem decrescente.
select 
    idFruta,
    nome,
    poder,
    tipo
from frutaDiabo
where poder like '%criar%' or poder like '%controlar%' or poder like '%transformar%'
order by idFruta desc
limit 5;

-- 6. Selecione o nome, recompensa, a data de nascimento e a altura dos personagens que sejam subordinados.
select nome, recompensa, dtNascimento, altura
from pirata where fkCapitao >= 1;

-- 7. Selecione o nome e o navio principal dos bandos em que o navio principal tenha duas letras repetidas seguidas

Select * from bandopirata where navioPrincipal like '%mm%';

/*
8. O mundo de One Piece foi criado pelo autor Eiichiro Oda em 1997 no Japão, onde tem uma cultura muito forte de respeito com os mais velhos. 
 Partes das características do cotidiano da vida do criador da série são passsadas para o mundo dos piratas, uma delas é exatamente esse respeito com os mais velhos.
 Ordene uma lista dos piratas do mais velho para o mais novo onde a recompensa seja maior que um bilhão de Beli e que também a ordem da lista seja apenas dos piratas que nasceram depois do ano de criação da série no Japão.
*/

select *
from pirata
where recompensa > 1000000000 and dtNascimento > '1997-12-31'
order by dtNascimento asc;

/*
9. As frutas do diabo do One Piece são um dos principais motivos pela origem dos poderes de vários personagens da série.
São vários tipos de poderes e o mais interessante que nenhum deles se repete, ou seja um personagem nunca vai poder ter o mesmo poder que o outro
através das frutas do diabo. 
As frutas são divididas em vários tipos e muitos tem uma origem parecida. Diga quais são as frutas que possuem os poderes de manipulação.

*/


select *
from frutaDiabo
where poder like '%manipular%';

-- 10. A altura média de um japonês adulto é de 1.64m, retorne o nome apenas dos Piratas que possuem a letra "o" no segundo nome e sejam mais baixos que a média dos japoneses ordenado em ordem de mais novo para mais velho.

select nome
from pirata
where nome LIKE '% %o%' and altura < 164 
order by dtNascimento desc;

-- 11. Quais são as recompensas e os nomes dos piratas onde comeram uma Fruta do Diabo e tem uma recompensa, ordenados pela recompensa em ordem decrescente

select recompensa, nome as 'Nome do Pirata' 
from pirata 
where fkFruta >= 1 and recompensa >= 1
order by recompensa desc;

-- 12. Quais são os nomes dos piratas e suas recompensas cujos nomes contêm a letra 'Z', sendo que a recompensa não pode ser nula e deve ser ordenado em ordem alfabética

select nome as 'Nome do Pirata', recompensa 
from pirata 
where nome like '%Z%' and recompensa >= 1 
order by nome asc;

-- 13. Mostre o nome de todos os piratas cuja recompensa multiplicado pela altura for 120000

select nome from pirata
where recompensa * altura = 120000;


-- 14. Mostre os pirata com id entre 20 e 40

select * from pirata
where idPirata >= 20 and idPirata <= 40;

-- 15. Selecione o nome e a altura (convertida para metros) com o nome da coluna nomeada de "Altura em metros" e a recompensa convertida para Belly (100 belly = 3.55)
-- com a coluna nomeada de "Recompensa em reais" de todos os piratas que tem altura cadastrada ordenado pela altura em ordem crescente.

SELECT 
	nome,
    altura / 100 as 'Altura em metros',
    recompensa * 0.0355
FROM pirata
WHERE altura >= 1
order by altura asc;

/* 
NÍVEL MÉDIO
NÍVEL MÉDIO
NÍVEL MÉDIO
NÍVEL MÉDIO
NÍVEL MÉDIO
*/

-- 1. Exiba o nome do bando e do navio principal do Monkey D. Luffy, juntamente 
-- de uma coluna nomeada como "Capitão" e exibir somente o capitão do bando nessa coluna, exibir
-- também a recompensa do capitão (convertida de Belly para reais, supondo que 1 Belly vale 2 reais)
-- nomeando essa coluna como "Recompensa do capitão", e exibir a altura que está em centímetros e 
-- e converter para metros nomeando a coluna do jeito que desejar.

select 
	banPira.nome,
    banPira.navioPrincipal,
    pira.nome as 'Capitão',
    pira.recompensa * 2 as 'Recompensa do capitão', 
    pira.altura / 100 as 'Altura'
from pirata as pira
inner join bandoPirata as banPira
on pira.fkBandoPirata = banPira.idBando
where pira.nome = 'Monkey D. Luffy';

-- 2. Exiba o nome do pirata, a recompensa dele, a data que nasceu, altura (converter de centímetros para metros), nome da fruta que ele comeu e o poder que essa fruta tem. Apenas exibir aqueles que tem altura (em metros)
-- que seja maior que 1 metro e 20 centímetros, e menor que 19 metros, e que comeram alguma fruta, se me informar aqueles que não tem fruta, Barba Negra, roubará sua vida... 
-- Jeito 1 de se fazer:

select
    pira.nome,
    pira.recompensa,
    pira.dtNascimento,
    pira.altura / 100 as Altura_metros,
    fruta.nome,
    fruta.poder
from pirata as pira
inner join frutaDiabo as fruta
on pira.fkFruta = fruta.idFruta
where pira.altura / 100 > 1.2 and pira.altura / 100 < 19;

-- Jeito 2 de se fazer:

select
    pira.nome,
    pira.recompensa,
    pira.dtNascimento,
    pira.altura / 100 as Altura_metros,
    fruta.nome,
    fruta.poder
from pirata as pira
inner join frutaDiabo as fruta
on pira.fkFruta = fruta.idFruta
where pira.altura > 120 and pira.altura < 1900;

-- 3. Qual a soma das recompensas do bando do Donquixote e seu Navio Principal

select 
	sum(recompensa) as "Soma das Recompensas", 
	bp.navioPrincipal from pirata pr
join bandoPirata bp
on pr.fkBandoPirata = bp.idBando
where bp.idBando = 10;

-- 4. Mostre todos os piratas que tem o poder de transformar o usuário ou outras massas

select p.nome, p.fkFruta, fd.idFruta, fd.nome, fd.poder
from pirata as p
inner join frutaDiabo as fd on p.fkFruta = fd.idFruta
where fd.poder like '%transformar%';

-- 5. Selecione todos os piratas que o id do seu capitão seja igual a 1 e que comece com a letra "N" e que tenha uma altura maior do que 180
SELECT p1.*
FROM pirata p1
INNER JOIN pirata p2 ON p1.fkCapitao = p2.idPirata
WHERE p1.nome LIKE 'n%'
AND p1.altura > 180;

-- 6. Exiba o id dos piratas, nome deles, e o nome do capitão deles, onde o id do pirata deve ser par, e o nome do capitão
-- deve ter algumas dessas seguintes vogais: "i", "u".
select pirata.idpirata, pirata.nome, capitao.nome
from pirata as Pirata
inner join pirata as Capitao
on pirata.fkCapitao = Capitao.idPirata
where (pirata.idPirata % 2 = 0) and (capitao.nome like '%i%' or capitao.nome like '%u%');


-- 7. Mostre a média das recompensas dos piratas que tem um nome que contenha a letra "D" e pertençam ao bando dos Piratas do Barba Negra, ordenado decrescentemente pelo Id
select avg(p.recompensa)
from pirata as p
inner join bandopirata as bp
on p.fkBandoPirata = bp.idBando
where p.nome like '%D%' and bp.nome = 'Piratas do Barba Negra'
order by idBando desc;

-- 8. Selecione todos os piratas que o id do seu bando seja igual a 10 e que comece com a letra "D" e que tenha uma recompensa maior que 1.000.000
SELECT p1.*
FROM pirata as p1
INNER JOIN pirata as p2 ON p1.fkCapitao = p2.idPirata
WHERE p1.nome LIKE 'd%'
AND p1.recompensa > 1000000
and p1.fkBandoPirata = 10;

-- 9. Para um ser humano normal no mundo de One Piece, quanto maior o valor da recompensa de um pirata mais temido ele deve ser. Porém há piratas sem recompensas, ou por ser muito fraco ou porque não há informações dele pelo Governo.
-- Mostre os nome dos piratas, a recompensa, data de nascimento de todos os piratas que sejam tripulantes de algum bando e que o nome do navio seja nome composto com a letra 'a' em qualquer um dos nomes e que a recompensa seja desconhecida, ordenando do mais novo para o mais velho.

select p.nome,
p.recompensa,
p.dtNascimento,
bp.nome,
bp.navioPrincipal
from pirata as p
join bandoPirata as bp on p.fkBandoPirata = bp.idBando
where bp.navioPrincipal like '%a% %a%'
and p.recompensa is null
order by dtNascimento desc;

-- 10. Sobre o bando dos Chapéu de Palha, exiba a média das recompensas, a recompensa mínima e máxima entre todos piratas do bando, e quantos piratas existem.

select avg(recompensa), min(recompensa), max(recompensa), count(*)
from pirata as p 
where fkBandoPirata = 1;


/* 
NÍVEL DIFÍCIL
NÍVEL DIFÍCIL
NÍVEL DIFÍCIL
NÍVEL DIFÍCIL
NÍVEL DIFÍCIL
*/

-- 1. Me informe o nome da fruta, poder dela, o nome do pirata, o objetivo dele (mesmo que algum objetivo não seja de nenhum pirata), recompensa, exibir a idade que ele tem no dia 17 de maio de 2024, e qual 
-- a altura dele em metros (está em centímetros, converta para metros), nome do bando, ordenado pelo id do objetivo em ordem decrescente.

select 
	fruta.nome as 'Nome da fruta', 
    fruta.poder,
    pira.nome as 'Nome do pirata', 
    ob.descricao,
    
    pira.recompensa, 
	YEAR('2024-05-17') - YEAR(pira.dtNascimento) as 'Idade', 
    pira.altura / 100 as 'altura em metros',
    bando.nome as 'Nome do bando'
from pirata as pira
right join frutaDiabo as fruta
on pira.fkFruta = fruta.idFruta

inner join bandoPirata as bando
on pira.fkBandoPirata = bando.idBando

inner join pirataObjetivo as piraOb
on piraOb.fkPirata = pira.idPirata

right join objetivo as ob
on piraOb.fkObjetivo = ob.idObjetivo
order by ob.idObjetivo desc;

-- 2. Mostre todos os piratas do bando do Luffy sem mostrar o capitão, mostre tambem as frutas que cada um tem e os objetivos deles

select	pir.nome,
		pir.recompensa,
		ban.nome,
        fru.nome,
        ob.descricao
from pirata pir
left join bandopirata ban
on pir.fkBandoPirata = ban.idBando
left join frutadiabo fru
on pir.fkFruta = fru.idFruta

inner join pirataobjetivo as piraOb
on piraOb.fkPirata = pir.idPirata

inner join objetivo as ob
on piraOb.fkObjetivo = ob.idObjetivo
where pir.fkBandoPirata = 1 and pir.fkCapitao = 1;

-- 3. Qual é a recompensa mínima, máxima e média para os piratas que comeram uma Fruta do Diabo do tipo 'Zoan Mítica' agrupado pelo nome do pirata e o nome da fruta.
select 
    p.nome as 'Nome do Pirata', 
    f.nome as 'Fruta do Diabo', 
    min(recompensa) as 'Recompensa Mínima', 
    max(recompensa) as 'Recompensa Máxima', 
    avg(recompensa) as 'Recompensa Média'
from pirata p
left join frutaDiabo f on f.idFruta = p.fkFruta
where tipo = 'Zoan Mítica' 
group by p.nome, f.nome;

-- 4. Mostre o nome, recompensa e altura da(o) pirata mais velho e com a maior recompensa que comeu a fruta do tipo Zoan Mítica, convertendo a moeda do One Piece (beli) para reais. 
-- Utilize a seguinte taxa de conversão 100 beli são aproximadamente  R$3,28 arredondando o valor final para 2 casas decimais. 

select p.nome,
	   round(p.recompensa * 0.0328, 2) as recompensa_em_reais, 
	   altura
from pirata p
join frutaDiabo f on p.fkFruta = f.idFruta
where f.tipo = 'Zoan Mítica' 
	and p.recompensa = (
		select max(p2.recompensa)
        from pirata p2
        join frutaDiabo f2 on p2.fkFruta = f2.idFruta
        where f2.tipo = 'Zoan Mítica'
);

-- 5. Exibir todos os piratas, e ter uma coluna descrevendo se o pirata é capitao ou não (nomear a coluna como "status_pirata").
select 
	bp.nome,
    p.nome,
    case 
		when p.fkCapitao is null then 'Capitão'
        else 'Subordinado'
	end as status_pirata
from pirata as p
left join pirata as capitao
on p.fkCapitao = capitao.idPirata
join bandopirata as bp
on bp.idBando = p.fkBandoPirata
order by p.fkCapitao;


-- CHALLENGE!!
-- CHALLENGE!!
-- CHALLENGE!!
-- CHALLENGE!!
-- CHALLENGE!!

-- 1. Selecione o nome do bando e a identificação dos piratas, que fazem parte do bando "Piratas do Chapéu de Palha". Além disso, também crie uma coluna "status_pirata" que selecionará o nome dos integrantes do bando, mostrando antes do nome o seu status de acordo com o seu papel e deve-se trocar por "@" tudo que tiver a letra "u" apenas no capitão do bando. Por exemplo: "Capitão @r@b@100" ou "Subordinado XPTOu". Também é exigido uma coluna "soma_recompensa" que mostrará a soma da recompensa de todos os membros do bando.
select
	bp.nome,
	p.idPirata,
    case 
		when p.fkCapitao is null then REPLACE(CONCAT('Capitão', ' ', p.nome), 'u', '@')
        else CONCAT('Subordinado', ' ', p.nome)
	end as status_pirata,
    (select sum(recompensa) from pirata as p where fkbandopirata = 1 group by fkBandoPirata) as soma_recompensa 
from pirata as p
left join pirata as capitao
on p.fkCapitao = capitao.idPirata
join bandopirata as bp
on bp.idBando = p.fkBandoPirata
where p.fkbandopirata = 1
group by bp.nome, p.idPirata
order by p.idPirata;

-- FALTA A SEGUNDA CHALLENGE!!
-- FALTA A SEGUNDA CHALLENGE!!
-- FALTA A SEGUNDA CHALLENGE!!
-- FALTA A SEGUNDA CHALLENGE!!
-- FALTA A SEGUNDA CHALLENGE!!
-- FALTA A SEGUNDA CHALLENGE!!

