create database Venda;

use Venda;

create table venda.cliente(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(55),
email VARCHAR(55),
endereco VARCHAR(45),
fkIndicador INT,
constraint fk_cliente_indicacao foreign key (fkIndicador) references cliente(id)
);

create table venda.produto(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
descricao VARCHAR(155),
preco DECIMAL(10,2)
)auto_increment = 100;

-- default NOW() faz com que sempre que o dado seja inserido ele pegue a data e o horario de agora

create table venda.vendas(
id INT PRIMARY KEY AUTO_INCREMENT,
total INT,
dtVenda DATETIME default NOW(),
fkCliente INT,
constraint fk_venda_cliente foreign key (fkCliente) references cliente(id)
) auto_increment = 1000;

create table venda.quantidade_venda(
fkVenda INT,
fkProduto INT,
qtdProduto INT,
precoUnitario DECIMAL(10,2),
desconto DECIMAL(10,2),
constraint pkComposta primary key (fkVenda, fkProduto),
constraint fk_quantidade_venda foreign key (fkVenda) references vendas(id),
constraint fk_quantidade_produto foreign key (fkProduto) references produto(id)
);


select 
*
from quantidade_venda;

insert into cliente (nome, email, endereco, fkIndicador)
values	('Marcelo', 'marcelo@gmail.com', 'paulista', null),
		('Lucas', 'lucas@gmail.com', 'Bela Vista', null),
        ('Murilo', 'murilo@gmail.com', 'Ipiranga', 1),
        ('Rafael', 'rafael@gmail.com', 'Ibirapuera', 2),
        ('Giovanna', 'giovanna@gmail.com', 'Santos', 1);
        
        
insert into produto (nome, descricao, preco)
values ('Escova', 'Uma escova de cabelo cacheados', 25.90),
		('Creme', 'Um creme de cabelo cacheados', 15.90),
        ('Secador', 'Um secador de cabelo', 65.95),
        ('Mixer', 'Um mixer para bater suas bebidas', 22.99),
        ('Aspirador', 'Um aspirador para limpar ssua casa', 45.90),
        ('liquidificador', 'Um liquidificador para triturar alimentos', 75.90);
        
insert into quantidade_venda(fkVenda, fkProduto, qtdProduto, precoUnitario, desconto)
values (1001, 105, 5, 20.20, 5.50),
		(1002, 104, 15, 40.20, 5.50),
        (1003, 103, 2, 30.20, 8.25),
        (1004, 102, 4, 25.20, 2.00),
        (1005, 101, 10, 25.90, 15.50);

-- esse default é o da tabela vai inserir conformo o default

insert into vendas (dtVenda,fkCliente)
values 	(default, 1),
		(default, 1),
        (default, 2),
        (default, 2),
        (default, 3),
        (default, 3),
        (default, 4),
        (default, 4),
        (default, 5),
        (default, 5);
        
select * from vendas;
select * from produto;

-- case when ta fazendo uma condição de caso quando o desconto for < 5 imprima isto
-- round para tirar as casas decimais

select  precoUnitario,
	qtdProduto,
	case when desconto < 5 then 'Pão Duro'
	when desconto <= 10 then 'Muito baixo'
	else 'Ta bom' end situacao_desconto,
		round(qtdProduto * precoUnitario, 2) as 'Valor Total Item', 
		desconto,
        round(Desconto / 100, 2) as Percentual,
        round((qtdProduto * precoUnitario)*((100 - desconto) / 100),2) as 'Valor com Desconto'
from quantidade_venda;


-- trazendo a média
select  precoUnitario,
	qtdProduto,
		case when desconto > (select avg(desconto) from quantidade_venda) then 'Acima da Média'
			else 'Abaixo da Média' end situacao_desconto,
		round(qtdProduto * precoUnitario, 2) as 'Valor Total Item', 
		desconto,
        round(Desconto / 100, 2) as Percentual,
        round((qtdProduto * precoUnitario)*((100 - desconto) / 100),2) as 'Valor com Desconto'
from quantidade_venda;

-- aparecendo os clientes e suas vendas

select * from cliente as cli
join vendas as ven on ven.fkCliente = cli.id;

insert into cliente (nome, email, endereco, fkIndicador)
values ('Laura', 'laura@gmail.com', 'Tatuape', null);

select * from cliente as cli
left join vendas as ven on ven.fkCliente = cli.id;

-- maior e menor preço do produto

select max(preco), min(preco) from produto;

-- somando o preço e a média 

select sum(preco), round(avg(preco),2) from produto;

-- pegando só os acima da média
select * from produto
where preco > (select avg(preco) from produto);

-- pegando o id e o valor da venda 

select ven.id, sum(qtdProduto * precoUnitario) as Soma
from vendas as ven
join quantidade_venda as qtdVen on qtdVen.fkVenda = ven.id
group by ven.id;

/*
1 - Listar a soma de vendas (qtde e valor total) por pedido*/

select fkVenda as 'Número do pedido',
sum(qtdProduto) as 'Quantidade de produto', 
sum(round((qtdProduto*precoUnitario)*((100-Desconto)/100),2)) as 'Valor total'
from quantidade_venda
group by fkvenda;


select fkVenda as 'Número do pedido',
sum(qtdProduto) as 'Quantidade de produto', 
sum(qtdProduto*precoUnitario) as 'Valor total'
from quantidade_venda
group by fkvenda;

select sum(qtdProduto) qtde_venda,
count(qtdProduto),
sum(qtdProduto*precoUnitario)
from quantidade_venda
group by fkvenda;


select * from quantidade_venda;
desc quantidade_venda;
/*
2 - Listar a soma de vendas (qtde e valor total) por produto
*/

select pro.nome as 'Nome do produto',-- nome do produto
		qv.qtdProduto as 'Quantidade de produto vendido', -- qtde de Produto vendido
        sum(round((qtdProduto*precoUnitario)*((100-Desconto)/100),2)) as 'Valor total'  -- valor total por produto vendido com desconto
from produto  as pro
join quantidade_venda as qv on pro.id = qv.fkProduto
group by pro.nome, qtdProduto;

select prod.nome as 'Nome do produto',-- nome do produto
		sum(qv.qtdProduto) as 'Quantidade de produto vendido', -- qtde de Produto vendido
        sum(qtdProduto*precoUnitario) as 'Valor total'  -- valor total por produto vendido
from produto  as prod
join quantidade_venda as qv on prod.id = qv.fkProduto
group by prod.nome, qtdProduto;

/*
3 - Listar a soma de vendas (qtde e valor total) por cliente*/

select cli.nome as 'Nome do cliente',-- nome do cliente
		prod.nome as 'Nome do produto',
		sum(qv.qtdProduto) as 'Quantidade de produto vendido por cliente', -- qtde de Produto vendido por cliente
        sum(qtdProduto*precoUnitario) as 'Valor total'  -- valor total por produto vendido por cliente
from cliente  as cli
join vendas as ve on cli.id = ve.fkCliente
join quantidade_venda as qv on ve.id = qv.fkVenda
join produto as prod on qv.fkProduto = prod.id
group by cli.nome, prod.nome;

/*
4 - Listar a soma de vendas (qtde e valor total) por produto e cliente*/

select cli.nome as 'Nome do cliente',-- nome do cliente
		prod.nome as 'Nome do produto',
        count(distinct ve.id) as 'Quantiadde de pedidos',-- qntd de pedido -> caso o cliente tivesse comprado mais de 1 item na 'compra' apareceria 2x
		sum(qv.qtdProduto) as 'Quantidade de produto vendido por cliente', -- qtde de Produto vendido por cliente
        sum(qtdProduto*precoUnitario) as 'Valor total'  -- valor total por produto vendido por cliente
from cliente  as cli
join vendas as ve on cli.id = ve.fkCliente
join quantidade_venda as qv on ve.id = qv.fkVenda
join produto as prod on qv.fkProduto = prod.id
group by cli.nome, prod.nome;


/*
5 - Classificar o desconto dos itens em COM DESCONTO E SEM DESCONTO */

select prod.nome,
		case when qv.Desconto > 0 then 'Ítem com desconto'
        else 'Ítem sem desconto' end 'Desconto?'
from produto as prod
join quantidade_venda as qv on prod.id = qv.fkProduto;

select cli.nome 'Nome do cliente',
	   pro.nome 'Nome do produto',
		 case when truncate(Desconto,0) = 0 then 'Sem desconto'
         else 'Com desconto' end Desconto,
         qtdProduto as 'Quantidade vendida',
         
		inner join cliente as cli on cli.idcliente = fkcliente
        inner join produto pro on pro.idproduto = fkproduto;
        
-- 6) Classificar o desconto NA VENDA com desconto e sem desconto

select 
ve.id as 'Venda',
prod.nome as 'Nome do produto',
case when truncate(qv.Desconto,0) > 10 then 'Desconto'
         else 'Sem desconto' end Desconto,
         qv.desconto as 'Quantidade '
from vendas as ve
right join quantidade_venda as qv on ve.id = qv.fkVenda
inner join produto as prod on qv.fkProduto = prod.id;

