CREATE DATABASE ecommerce;

USE ecommerce;

-- Tabela Clientes
CREATE TABLE clients (
	idClient INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Fname VARCHAR(20),
    Minit VARCHAR(15),
    Lname VARCHAR(20),
    CPF CHAR(11) NOT NULL,
    Address VARCHAR(80),
    CONSTRAINT unique_cpf_client UNIQUE (CPF)
);

-- Tabela Produtos
CREATE TABLE product (
	idProduct INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Pname VARCHAR(20) NOT NULL,
    classification_kids BOOL DEFAULT false,
    category ENUM('Eletrônico', 'Móveis', 'Brinquedos', 'Livros', 'Papelaria', 'Vestimentas', 'Alimentos') NOT NULL,
    avaliation FLOAT DEFAULT 0,
    size VARCHAR(10)
);

-- Tabela Pagamentos
CREATE TABLE payments (
    idClient INT,
    idPayment INT,
    typePayment ENUM('Cartão de Débito', 'Cartão de Crédito', 'PIX', 'Boleto', 'Dois cartões'),
    limitAvailable FLOAT,
    PRIMARY KEY(id_Client, idPayment),
    CONSTRAINT fk_payments_client FOREIGN KEY (idClient) REFERENCES clients(idClient)
);

-- Tabela Pedidos
CREATE TABLE orders (
	idOrder INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    idOrderClient INT, 
    orderStatus ENUM('Cancelado', 'Confirmado', 'Em processamento') DEFAULT 'Em processamento',
    orderDescription VARCHAR(255) DEFAULT 10.0,
    sendValue FLOAT,
    paymentCash BOOL DEFAULT false,
    idPayment INT,
    CONSTRAINT fk_orders_client FOREIGN KEY (idOrderClient) REFERENCES clients(idClient),
    CONSTRAINT fk_orders_payment FOREIGN KEY (idPayment) REFERENCES payments(idPayments)
);