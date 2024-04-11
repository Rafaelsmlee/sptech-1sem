create database correcao;
use correcao;


create table treinador
(idTreinador INT auto_increment,
 nome varchar(45) not null,
 telefone varchar(12) not null,
 email varchar(45) not null,
 fk_Orientado int,
 
 primary key (idTreinador),
 constraint chck_fk_orientador foreign key  (fk_Orientado) references treinador(idTreinador)
 ) auto_increment = 10;
 
 create table Nadador
 (idNadador INT auto_increment,
 nome varchar(45) not null,
 estado_origem varchar(45) not null,
 dataNascimento date not null,
 fk_Treinador int,
 
 primary key (idNadador)
 ) auto_increment=100;
 
 alter table Nadador
 add constraint chck_fk_Treinador
 foreign key (fk_Treinador) references treinador(idTreinador);
 
 insert into treinador
 (nome, telefone, email, fk_Orientado)
 values ('Pedro Amaral', '111111111', 'pedro.amaral@email.com', null),
	    ('Timite Corinthans', '22222222', 'timite.corinthans@email.com', 10),
        ('Olga Senhora', '33333333333', 'olga.senhora@email.com',11 ),
        ('Jessica Kim', '444444444', 'jessica.kim@email.com', 10),
        ('Rafael Lee', '555555555', 'rafael.lee@email.com', 12);
        
        select t.idTreinador as 'id Orientador', t.nome as 'nome da pessoa orientada', ori.idTreinador as 'id Orientado', ori.nome as 'nome do orientador'
        from treinador as t
		join treinador as ori  on ori.fk_Orientado = t.idTreinador
        order by ori.fk_Orientado;
        
        select * from nadador;
        
        insert into Nadador
        (nome, estado_origem, dataNascimento, fk_Treinador)
        values  ('João Silva', 'Minas Gerais', '2000-02-02', 10),
				('Nadia Olga', 'Espirito Santos', '2000-03-02', 10),
                ('Paula Ribe', 'São Paulo', '2000-04-02', 11),
                ('Aline Silva', 'Recife', '2002-03-20', 12),
                ('Pedro Petrick', 'Recife', '2004-12-25', 13),
                ('Kim Kimmy', 'Pará', '2008-01-01', 14);
                
	  select 
      na.idNadador as 'id Nadador',
	  na.nome as 'Nome do nadador',
      ori.idTreinador as 'id Orientador',
      ori.nome as 'Orientador',
      t.idTreinador as 'id Novato',
      t.nome as 'novato'
        from treinador as ori
		left join treinador as t  on ori.fk_Orientado = t.idTreinador
        join nadador as na on na.fk_Treinador = t.idTreinador
        order by na.nome;
        
        	  select 
      na.idNadador as 'id Nadador',
	  na.nome as 'Nome do nadador',
      ori.idTreinador as 'id Orientador',
      ori.nome as 'Orientador',
      t.idTreinador as 'id Novato',
      t.nome as 'novato'
        from treinador as ori
		 join treinador as t  on ori.fk_Orientado = t.idTreinador
        join nadador as na on (na.fk_Treinador = t.idTreinador or fk_Treinador = ori.idTreinador);
        /*where ori.fk_Orientado is null; erro
        */
        
        /*
        Quem tem vários tem a fk, nesse exemplo é o novato
        Quem tem a id é quem ta mandando na id, nesse caso o Orientador
         
        */
        select
        orientador.idTreinador as 'idTreinador',
        orientador.nome as 'nome orientador',
        novato.idTreinador as 'id Novato',
        novato.nome as 'nome novato',
        nad.nome as 'Nadador'
        from treinador as novato
        join treinador as orientador on novato.fkOrientador = orientador.idTreinador
        join nadador as nad on nad.fk_idTreinador = orientador.idTreinador;