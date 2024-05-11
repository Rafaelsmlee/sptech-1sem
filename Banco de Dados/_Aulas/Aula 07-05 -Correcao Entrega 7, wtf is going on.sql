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



insert into cliente (nome, email, endereco, fkIndicador)
values ('Marcelo', 'marcelo@gmail.com', 'paulista', null),
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
        
-- esse default é o da tabela vai inserir conformo o default

insert into vendas (dtVenda,fkCliente)
values (default, 1),
		(default, 1),
        (default, 2),
        (default, 2),
        (default, 3),
        (default, 3),
        (default, 4),
        (default, 4),
        (default, 5),
        (default, 5);
        
insert into quantidade_venda(fkVenda, fkProduto, qtdProduto, precoUnitario, desconto)
values (1001, 105, 5, 20.20, 5.50),
		(1002, 104, 15, 40.20, 5.50),
        (1003, 103, 2, 30.20, 8.25),
        (1004, 102, 4, 25.20, 2.00),
        (1005, 101, 10, 25.90, 15.50);


        
select * from vendas;
select * from produto;
select * from quantidade_venda;



select precounitario,
round(qtdProduto*precoUnitario,2) valor_total_item,
Desconto,
round(desconto/100,2) percentual,
round((qtdProduto*precoUnitario)*((100-Desconto)/100),2) valor_com_desconto
from Quantidade_venda;

select val.valor_total_item, valor_com_desconto
from (select round(qtdProduto*precoUnitario,2) valor_total_item,
Desconto,
round(desconto/100,2) percentual,
round((qtdProduto*precoUnitario)*((100-Desconto)/100),2) valor_com_desconto
from Quantidade_venda) as val;

select precoUnitario, qtdProduto,
	case when Desconto < 5 then 'Pao Duro' -- case é tipo um if ou seja um caso quando x aconteça então 
		when desconto > 5 and desconto < 10  then 'Muito baixo' -- Le de cima para baixo -> Pode usar todos os operadores tipo 'like', 'between', 'or'
			else 'Ta bao' end situcao_desconto -- end = fechar o case e depois entra um alias 
from (select round(qtdProduto*precoUnitario,2) valor_total_item,
Desconto,
round(desconto/100,2) percentual,
round((qtdProduto*precoUnitario)*((100-Desconto)/100),2) valor_com_desconto
from Quantidade_venda);


select precoUnitario, qtdProduto,
	case when Desconto > (select avg(desconto)  -- se fosse select desconto from Quantidade_venda -> Retorna mais que uma linha então ele quebra
		from Quantidade_venda) then 'Acima da média' -- Se retornar mais que um resultado pode quebrar o query
         else 'Abaixo da Media' end situcao_desconto -- end = fechar o case e depois entra um alias 
from (select round(qtdProduto*precoUnitario,2) valor_total_item,
Desconto,
round(desconto/100,2) percentual,
round((qtdProduto*precoUnitario)*((100-Desconto)/100),2) valor_com_desconto
from Quantidade_venda) as val;

select *
from cliente
left join vendas on cliente.id = vendas.fkcliente;

select ven.id, sum(qtdProduto*precoUnitario) soma
from vendas ven
inner join Quantidade_venda as qt on qt.fkVenda = ven.id
group by ven.id;
-- COM GROUP BY -> Faz venda a venda ou seja 1 por 1


select ven.id, (qtdProduto*precoUnitario) soma
from vendas ven
inner join Quantidade_venda as qt on qt.fkVenda = ven.id;
--  >> ERRO <<
-- SEM GROUP BY -> ele pega apenas o id venda do primeiro e soma todos de uma vez


/*
1 - Listar a soma de vendas (qtde e valor total) por pedido*/

-- round((qtdProduto*precoUnitario)*((100-Desconto)/100),2) valor_com_desconto
select fkVenda 'Número do pedido',
sum(qtdProduto) as 'Quantidade de produto', 
round(qtdProduto*precoUnitario)*((100-Desconto)/100,2) as 'Valor com desconto'
from quantidade_venda
group by fkVenda;

/*
2 - Listar a soma de vendas (qtde e valor total) por produto

3 - Listar a soma de vendas (qtde e valor total) por cliente

4 - Listar a soma de vendas (qtde e valor total) por produto e cliente

5 - Classificar o desconto dos itens em COM DESCONTO E SEM DESCONTO */