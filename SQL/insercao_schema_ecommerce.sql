USE ecommerce;

-- Inserções para a tabela PF
INSERT INTO PF (CPF) VALUES
('11122233344'),
('55566677788'),
('99900011122'),
('33344455566'),
('77788899900');

-- Inserções para a tabela PJ
INSERT INTO PJ (CNPJ, SocialName) VALUES
('123456789012345', 'Empresa de Tecnologia LTDA'),
('987654321098765', 'Distribuidora de Alimentos SA'),
('112233445566778', 'Loja de Roupas ME'),
('887766554433221', 'Editora de Livros LTDA'),
('445566778899001', 'Fabricante de Brinquedos SA');

-- Inserções para a tabela clients
INSERT INTO clients (Fname, Minit, Lname, CPF, Address) VALUES
('Maria', 'S', 'Silva', '11122233344', 'Rua A, 123'),
('João', 'P', 'Oliveira', '55566677788', 'Avenida B, 456'),
('Ana', 'C', 'Souza', '99900011122', 'Travessa C, 789'),
('Pedro', 'M', 'Pereira', '33344455566', 'Rua D, 1011'),
('Carla', 'R', 'Rodrigues', '77788899900', 'Avenida E, 1213');

-- Inserções para a tabela product
INSERT INTO product (Pname, classification_kids, category, avaliation, size) VALUES
('Notebook', false, 'Eletrônico', 4.5, '15 pol'),
('Mesa de Jantar', false, 'Móveis', 4.0, '1.20m'),
('Boneca', true, 'Brinquedos', 4.8, 'Pequeno'),
('O Senhor dos Anéis', false, 'Livros', 5.0, null),
('Caderno', false, 'Papelaria', 4.2, null);

-- Inserções para a tabela payments
INSERT INTO payments (idClient, idPayment, typePayment, limitAvailable) VALUES
(1, 1001, 'Cartão de Crédito', 1000.00),
(2, 1002, 'PIX', null),
(3, 1003, 'Cartão de Débito', 500.00),
(4, 1004, 'Boleto', null),
(5, 1005, 'Dois cartões', 1500.00);

-- Inserções para a tabela orders
INSERT INTO orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash, idPayment) VALUES
(1, 'Confirmado', 'Pedido de notebook', 20.00, false, 1001),
(2, 'Em processamento', 'Pedido de boneca', 15.00, true, 1002),
(3, 'Cancelado', 'Pedido de caderno', 0.00, false, 1003),
(4, 'Confirmado', 'Pedido de mesa', 30.00, false, 1004),
(5, 'Em processamento', 'Pedido de livro', 10.00, true, 1005);

-- Inserções para a tabela productStorage
INSERT INTO productStorage (storageLocation, quantify) VALUES
('Galpão A, Prateleira 1', 50),
('Galpão B, Prateleira 2', 100),
('Galpão C, Prateleira 3', 200),
('Galpão D, Prateleira 4', 500),
('Galpão E, Prateleira 5', 1000);

-- Inserções para a tabela supplier
INSERT INTO supplier (CNPJ, contact) VALUES
('123456789012345', '11999998888'),
('987654321098765', '21988887777'),
('112233445566778', '31977776666'),
('887766554433221', '41966665555'),
('445566778899001', '51955554444');

-- Inserções para a tabela seller
INSERT INTO seller (CNPJ, AbstName, location, contact) VALUES
('123456789012345', 'Tech Store', 'Rua Principal, 100', '1122223333'),
('987654321098765', 'Food Supplier', 'Avenida Central, 200', '2133334444'),
('112233445566778', 'Dress Shop', 'Rua Comercial, 300', '3144445555'),
(NULL, 'Vendedor', 'Internet', '9999999999'),
(NULL, 'Vendedora', 'Internet', '8888888888');

-- Inserções para a tabela productSeller
INSERT INTO productSeller (idSeller, idProduct, prodQuantify) VALUES
(1, 1, 10),
(2, 2, 20),
(3, 3, 30),
(4, 4, 10),
(5, 5, 5);


-- Inserções para a tabela productOrder
INSERT INTO productOrder (idPOproduct, idPOorder, poQuantity, poStatus) VALUES
(1, 1, 1, 'Disponível'),
(2, 2, 2, 'Disponível'),
(3, 3, 1, 'Sem estoque'),
(4, 4, 1, 'Disponível'),
(5, 5, 1, 'Disponível');

-- Inserções para a tabela storageLocation
INSERT INTO storageLocation (idLproduct, idLstorage, location) VALUES
(1, 1, 'Galpão A, Prateleira 1'),
(2, 2, 'Galpão B, Prateleira 2'),
(3, 3, 'Galpão C, Prateleira 3'),
(4, 4, 'Galpão D, Prateleira 4'),
(5, 5, 'Galpão E, Prateleira 5');


-- Inserções para a tabela productSupplier
INSERT INTO productSupplier (idPsSupplier, idPsProduct, quantity) VALUES
(1, 1, 100),
(2, 2, 200),
(3, 3, 300),
(4, 4, 400),
(5, 5, 500);