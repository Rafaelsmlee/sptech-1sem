/*Fazer a modelagem lógica de um sistema para cadastrar os alunos da 
faculdade, seus projetos e seus acompanhantes que eles poderão 
trazer no dia da apresentação final do projeto. - Cada aluno participa apenas de um projeto. - Cada projeto pode ter a participação de um ou mais alunos. - Cada aluno pode trazer zero ou mais acompanhantes. - Há alguns alunos que atuam como representantes de outros alunos. 
Qualquer problema ou queixa que os alunos tiverem, devem falar com o 
aluno que os representa. O aluno representante, por sua vez, reporta os 
problemas/queixas à equipe de socioemocional. - Cada aluno é representado apenas por um aluno. - Sobre os alunos, o sistema guarda o ra (chave primária), nome, telefone. - Sobre os projetos, o sistema guarda um identificador (chave primária), 
nome e a descrição do projeto. - Sobre os acompanhantes, o sistema guarda um identificador, nome e o 
tipo de relação com o aluno (se é pai, amigo, irmão, namorado, etc). 
Criar um banco de dados AlunoProjeto no MySQL, selecionar esse 
banco de dados e executar as instruções relacionadas a seguir. - Criar as tabelas equivalentes à modelagem.  - Inserir dados nas tabelas. - Exibir todos os dados de cada tabela criada, separadamente. - Fazer os acertos da chave estrangeira, caso não tenha feito no momento 
da criação. - Exibir os dados dos alunos e dos projetos correspondentes. - Exibir os dados dos alunos e dos seus acompanhantes. - Exibir os dados dos alunos e dos seus representantes. - Exibir os dados dos alunos e dos projetos correspondentes, mas somente 
de um determinado projeto (indicar o nome do projeto na consulta). - Exibir os dados dos alunos, dos projetos correspondentes e dos seus 
acompanhantes. 
2. Fazer a modelagem lógica de um sistema para cadastrar as campanhas de 
doações que surgiram devido ao Covid-19 e os organizadores dessas 
campanhas - Cada organizador organiza mais de uma campanha de doação. - Cada campanha de doação é organizada por apenas um organizador. - Sobre cada organizador, o sistema guarda um identificador, que identifica de 
forma única cada organizador. Esse identificador começa com o valor 30 e é 
inserido de forma automática. Além desse identificador, o sistema guarda o 
nome, o endereço (composto pelo nome da rua e bairro) e o e-mail do 
organizador. 
- Sobre cada campanha de doação, o sistema guarda um identificador, que 
identifica de forma única cada campanha. Esse identificador começa com o valor 
500 e é inserido de forma automática. O sistema também guarda a categoria da 
doação (ex: alimento ou produto de higiene, ou máscaras de proteção, etc), a 
instituição para a qual será feita a doação (pode haver até 2 instituições) e a data 
final da campanha. - Um organizador mais experiente orienta outros organizadores novatos. Cada 
organizador novato é orientado apenas por um organizador mais experiente. 
Escrever os comandos do MySQL para: 
a) Criar um banco de dados chamado Campanha. 
b) Selecionar esse banco de dados. 
c) Criar as tabelas correspondentes à sua modelagem. 
d) Inserir dados nas tabelas, de forma que exista mais de uma campanha para 
algum organizador, e mais de um organizador novato sendo orientado por algum 
organizador mais experiente. 
e) Exibir todos os dados de cada tabela criada, separadamente. 
f) Fazer os acertos da chave estrangeira, caso não tenha feito no momento da 
criação das tabelas. 
g) Exibir os dados dos organizadores e os dados de suas respectivas 
campanhas. 
h) Exibir os dados de um determinado organizador (informar o nome do 
organizador na consulta) e os dados de suas respectivas campanhas. 
i) Exibir os dados dos organizadores novatos e os dados dos respectivos 
organizadores orientadores. 
j) Exibir os dados dos organizadores novatos e os dados dos respectivos 
organizadores orientadores, porém somente de um determinado organizador 
orientador (informar o nome do organizador orientador na consulta). 
l) Exibir os dados dos organizadores novatos, os dados das respectivas 
campanhas organizadas e os dados dos respectivos organizadores 
orientadores. 
m) Exibir os dados de um organizador novato (informar o seu nome na consulta), 
os dados das respectivas campanhas em que trabalha e os dados do seu 
organizador orientador.*/