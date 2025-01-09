/*
	Desafio de inserção no MySQL
    
    - Recuperações simples com SELECT Statement;
    - Filtros com WHERE Statement;
    - Crie expressões para gerar atributos derivados;
    - Defina ordenações dos dados com ORDER BY;
    - Condições de filtros aos grupos – HAVING Statement;
    - Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
*/


/* ###############################
	Recuperações Simples com SELECT Statement
############################### */

USE ecommerce;

-- Seleciona todos os clientes
SELECT * FROM clients;

-- Seleciona apenas o nome e o endereço dos clientes:
SELECT Fname, Lname, Address FROM clients;

-- Seleciona todos os produtos:
SELECT * FROM product;


/* ###############################
	Filtros com WHERE Statement
############################### */

-- Seleciona clientes com nome "Maria":
SELECT * FROM clients WHERE Fname = 'Maria';

-- Seleciona produtos da categoria 'Eletrônico':
SELECT * FROM product WHERE category = 'Eletrônico';

-- Seleciona produtos com avaliação maior que 4.5:
SELECT * FROM product WHERE avaliation > 4.5;

-- Seleciona pedidos que foram confirmados:
SELECT * FROM orders WHERE orderStatus = 'Confirmado';


/* ###############################
	Criar Expressões para Gerar Atributos Derivados
############################### */

-- Concatena nome completo do cliente:
SELECT idClient, CONCAT(Fname, ' ', Minit, ' ', Lname) AS FullName FROM clients;

-- Calcula o valor total de um pedido (considerando que o envio é fixo):
SELECT idOrder, (sendValue + 10) AS TotalValue FROM orders;

-- Adiciona um prefixo a todos os nomes de produtos:
SELECT idProduct, CONCAT('Produto: ', Pname) AS FullProductName FROM product;


/* ###############################
	Ordenações dos Dados com ORDER BY
############################### */

-- Lista clientes em ordem alfabética pelo sobrenome:
SELECT * FROM clients ORDER BY Lname ASC;

-- Lista produtos por avaliação em ordem decrescente:
SELECT * FROM product ORDER BY avaliation DESC;

-- Lista todos os pedidos pelo valor de envio crescente:
SELECT * FROM orders ORDER BY sendValue ASC;


/* ###############################
	Condições de Filtros aos Grupos – HAVING Statement
############################### */

-- Agrupa produtos por categoria e mostrar categorias com avaliação média superior a 4.5:
SELECT category, AVG(avaliation) AS avg_avaliation
FROM product
GROUP BY category
HAVING AVG(avaliation) > 4.5;

-- Agrupa a quantidade de produtos por ID de vendedor, mostrar apenas vendedores com mais de 5 itens:
SELECT idSeller, SUM(prodQuantify) AS total_products
FROM productSeller
GROUP BY idSeller
HAVING total_products > 5;


/* ###############################
	Junções (JOINs) entre Tabelas
############################### */

-- Lista clientes e seus pagamentos:
SELECT c.Fname, c.Lname, p.typePayment, p.limitAvailable
FROM clients c
INNER JOIN payments p ON c.idClient = p.idClient;

-- Lista pedidos, seus clientes e os produtos envolvidos:
SELECT o.idOrder, c.Fname, c.Lname, pr.Pname
FROM orders o
JOIN clients c ON o.idOrderClient = c.idClient
JOIN productOrder po ON o.idOrder = po.idPOorder
JOIN product pr ON po.idPOproduct = pr.idProduct;

-- Listar vendedores e quantos produtos eles vendem:
SELECT s.AbstName, SUM(ps.prodQuantify) as TotalProdutos 
FROM seller s 
JOIN productSeller ps ON ps.idSeller = s.idSeller 
GROUP BY s.AbstName;

-- Lista o nome do produto, sua categoria e onde está armazenado:
SELECT p.Pname, p.category, ps.storageLocation
FROM product p
JOIN storageLocation sl ON p.idProduct = sl.idLproduct
JOIN productStorage ps ON sl.idLstorage = ps.idProdStorage;