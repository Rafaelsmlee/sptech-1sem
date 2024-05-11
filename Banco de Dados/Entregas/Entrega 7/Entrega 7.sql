/*
Fazer a modelagem lógica de um sistema para cadastrar os clientes, suas vendas e 
seus respectivos produtos.
- Cada cliente realiza mais de uma venda.
- Cada venda é de apenas um cliente e tem mais de um produto.
- Cada produto pode ser vendido em mais de uma venda.
- Sobre cada cliente, o sistema guarda um identificador, que identifica de forma única 
cada cliente. Além desse identificador, o sistema guarda o nome, o email e o 
endereço.
- Sobre cada venda, o sistema guarda um identificador, que identifica de forma única 
cada venda. O sistema também guarda o total da venda e a data.
- Sobre cada produto, o sistema guarda um identificador, que identifica de forma 
única cada produto. Além desse identificador, o sistema guarda o nome, a descrição 
e o preço do produto.
- Um cliente indica outro cliente, necessário que o sistema guarde qual cliente indicou 
o outro cliente. Cada cliente pode indicar muitos clientes e cada cliente é indicado por 
apenas um cliente.
- O sistema ainda precisa saber quantidade do produto vendido numa determinada 
venda e o valor do desconto.
Abra no MySQL Workbench uma nova aba para fazer os comandos SQL.
Escrever os comandos do MySQL para:
a) Criar um banco de dados chamado Venda.
b) Selecionar esse banco de dados.
c) Criar as tabelas correspondentes à sua modelagem.
e) Exibir todos os dados de cada tabela criada, separadamente.
f) Fazer os acertos da chave estrangeira, caso não tenha feito no momento da criação 
das tabelas.*/
create database venda;
use venda;

create table cliente
(idCliente INT auto_increment not null,
nome VARCHAR(45) not null,
sobrenome VARCHAR(45) not null,
email VARCHAR(333) not null,
endereco VARCHAR (100) not null,
numero VARCHAR (4) not null,
bairro VARCHAR (45) not null,
cidade VARCHAR(45) not null,
fkClienteIndc INT null,

primary key(idCliente),
constraint chck_clienteIndicado foreign key (fkClienteIndc) references cliente(idCliente)
 );
 
 create table venda
 ( idVenda INT auto_increment not null,
  dataVenda date not null,
  totalVenda DECIMAL(5,2) not null,
  fkCliente INT not null,
  
  primary key(idVenda),
  constraint chck_fkVenda foreign key (fkCliente) references cliente(idCliente)
 ) auto_increment = 1000;
 
 create table produto
 (idProduto INT auto_increment not null,
 nome VARCHAR(45) not null,
 descricao VARCHAR(100) not null,
 preco DECIMAL(5,2) not null,
 
 primary key(idProduto)
 ) auto_increment=500;
 
 create table venda_produto
 (fkVenda INT not null,
 fkProduto INT not null,
 
 primary key(fkVenda, fkProduto),
 constraint chckFkVenda foreign key(fkVenda) references venda(idVenda),
 constraint chckFkProduto foreign key(fkProduto) references produto(idProduto)
 );

/*
d) Inserir dados nas tabelas, de forma que exista mais de uma venda para cada 
cliente, e mais de um cliente sendo indicado por outro cliente.*/

insert into cliente (nome, sobrenome, email, endereco, numero, bairro, cidade, fkClienteIndc) 
values 
('João', 'Silva', 'joao@email.com', 'Rua A', '123', 'Centro', 'Cidade A', null), 
('Maria', 'Santos', 'maria@email.com', 'Rua B', '456', 'Bairro X', 'Cidade B', 1),
('Pedro', 'Ferreira', 'pedro@email.com', 'Rua C', '789', 'Bairro Y', 'Cidade C', 2),
('José', 'Silva', 'jose@email.com', 'Rua D', '124', 'Bairro Z', 'Cidade B', 2);


insert into venda (dataVenda, totalVenda, fkCliente) 
values 
('2024-05-01', 50.00, 1), 
('2024-05-02', 60.00, 2), 
('2024-05-03', 90.00,3),
('2024-05-04', 30.00, 1),
('2024-05-04', 40.00, 4);

insert into produto (nome, descricao, preco) 
values 
('Produto A', 'Descrição do Produto A', 20.00),
('Produto B', 'Descrição do Produto B', 30.00),
('Produto C', 'Descrição do Produto C', 40.00);


INSERT INTO venda_produto (fkVenda, fkProduto) 
VALUES 
(1000, 500), 
(1000, 501),
(1001, 500), 
(1001, 502),
(1002, 500), 
(1002, 501),
(1002, 502),
(1003, 501),
(1004, 502);

select * from cliente;
select * from venda;
select * from produto;
select * from venda_produto;

/*
g) Exibir os dados dos clientes e os dados de suas respectivas vendas.*/

select c.idCliente, 
concat(c.nome, ' ', c.sobrenome) as 'Nome do cliente',
c.email, 
concat(c.endereco,' ','-',' ', c.numero, ' ','-',' ', c.bairro, ' ','-',' ', c.cidade) as 'Endereço do cliente',
v.idVenda,
v.dataVenda as 'Data da venda',
v.totalVenda as 'Venda total'
from venda as v
inner join cliente as c on v.fkCliente = c.idCliente;

/*
h) Exibir os dados de um determinado cliente (informar o nome do cliente na consulta) 
e os dados de suas respectivas vendas.*/
select c.idCliente, 
concat(c.nome, ' ', c.sobrenome) as 'Nome do cliente',
c.email, 
concat(c.endereco,' ','-',' ', c.numero, ' ','-',' ', c.bairro, ' ','-',' ', c.cidade) as 'Endereço do cliente',
v.idVenda,
v.dataVenda as 'Data da venda',
v.totalVenda as 'Venda total'
from venda as v
inner join cliente as c on v.fkCliente = c.idCliente
where c.nome = 'João';

/*
i) Exibir os dados dos clientes e de suas respectivas indicações de clientes.*/

select c.idCliente, 
concat(c.nome, ' ', c.sobrenome) as 'Nome do cliente',
c.email, 
i.idCliente, 
concat(i.nome, ' ', i.sobrenome) as 'Nome do indicado',
i.email
from cliente as i
inner join cliente as c on i.fkClienteIndc = c.idCliente;

/*
j) Exibir os dados dos clientes indicados e os dados dos respectivos clientes 
indicadores, porém somente de um determinado cliente indicador (informar o nome 
do cliente que indicou na consulta).*/

select c.idCliente, 
concat(c.nome, ' ', c.sobrenome) as 'Nome do indicador',
c.email, 
i.idCliente, 
concat(i.nome, ' ', i.sobrenome) as 'Nome do indicado',
i.email
from cliente as i
inner join cliente as c on i.fkClienteIndc = c.idCliente
where c.nome = 'Maria';

/*
l) Exibir os dados dos clientes, os dados dos respectivos clientes que indicaram, os 
dados das respectivas vendas e dos produtos.*/

select  c.idCliente, 
concat(c.nome, ' ', c.sobrenome) as 'Nome do cliente',
c.email, 
concat(c.endereco,' ','-',' ', c.numero, ' ','-',' ', c.bairro, ' ','-',' ', c.cidade) as 'Endereço do cliente',
i.idCliente as 'ID do Cliente Indicado', 
concat(i.nome, ' ', i.sobrenome) as 'Nome do CLIENTE INDICADO',
i.email,
concat(c.endereco,' ','-',' ', c.numero, ' ','-',' ', c.bairro, ' ','-',' ', c.cidade) as 'Endereço do cliente INDICADO',
v.idVenda,
v.dataVenda as 'Data da venda',
v.totalVenda as 'Venda total'
from venda as v
inner join cliente as c on v.fkCliente = c.idCliente
left join cliente as i on i.fkClienteIndc = c.idCliente;

/*
m) Exibir apenas a data da venda, o nome do produto e a quantidade do produto 
numa determinada venda.*/

select v.dataVenda AS 'Data da venda',
       p.nome AS 'Nome do produto',
       COUNT(vp.fkProduto) AS 'Quantidade'
from venda AS v
inner join venda_produto AS vp ON v.idVenda = vp.fkVenda
inner join produto AS p ON vp.fkProduto = p.idProduto
where v.idVenda = 1000 
group by v.dataVenda, p.nome;

/*
n) Exibir apenas o nome do produto, o valor do produto e a soma da quantidade de 
produtos vendidos agrupados pelo nome do produto.*/

select p.nome as 'Nome do produto',
       p.preco as 'Valor do produto',
       SUM(vp.fkProduto) AS 'Quantidade total vendida'
from produto AS p
left join venda_produto as vp on p.idProduto = vp.fkProduto
group by p.nome, p.preco;

/*
o) Inserir dados de um novo cliente. Exibir os dados dos clientes, das respectivas 
vendas, e os clientes que não realizaram nenhuma venda.*/

insert into cliente (nome, sobrenome, email, endereco, numero, bairro, cidade, fkClienteIndc) 
VALUES 
('Ana', 'Sousa', 'ana@email.com', 'Rua E', '101', 'Bairro W', 'Cidade D', NULL);


select c.idCliente, 
       CONCAT(c.nome, ' ', c.sobrenome) as 'Nome do cliente',
       c.email, 
       CONCAT(c.endereco, ' ', '-', ' ', c.numero, ' ', '-', ' ', c.bairro, ' ', '-', ' ', c.cidade) AS 'Endereço do cliente',
       v.idVenda,
       v.dataVenda as 'Data da venda',
       v.totalVenda as 'Venda total'
from cliente as c
left join venda as v on c.idCliente = v.fkCliente;

/*
p) Exibir o valor mínimo e o valor máximo dos preços dos produtos;*/

select  min(preco) as 'Valor mínimo',
       max(preco) as 'Valor máximo'
from  produto;

/*
q) Exibir a soma e a média dos preços dos produtos;*/

select sum(preco) as 'Soma dos preços',
       round(avg(preco),2) as 'Média dos preços'
from produto;

/*
r) Exibir a quantidade de preços acima da média entre todos os produtos;*/
select count(*) as 'Quantidade de preços acima da média'
from produto
where preco > (select avg(preco) from produto);

/*
s) Exibir a soma dos preços distintos dos produtos;*/

select sum(distinct preco) as 'Soma dos preços distintos'
from produto;

/*
t) Exibir a soma dos preços dos produtos agrupado por uma determinada venda
*/

select v.idVenda,
       sum(p.preco) as 'Soma dos preços dos produtos'
from venda v
inner join venda_produto as vp on v.idVenda = vp.fkVenda
inner join produto p on vp.fkProduto = p.idProduto
group by v.idVenda;