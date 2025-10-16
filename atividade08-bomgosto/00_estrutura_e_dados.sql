/*A cafeteria BomGosto deseja controlar as suas vendas de café. A BomGosto controla suas vendas a partir de uma comanda. Uma comanda tem um código único, data, o número da mesa do cliente e o nome do cliente registrados. Nos itens da comanda é possível relacionar vários cafés listados no cardápio que foram vendidos. Cada item da comanda possui o código do cardápio e a quantidade requisitada deste e, não é possível inserir o mesmo código de cardápio mais de uma vez na mesma comanda. No cardápio é apresentado o nome único do café, a descrição da sua composição e o preço unitário.

Desenvolva os scripts SQL para atender cada uma das questões abaixo:*/


-- Projeto: Cafeteria BomGosto


-- CRIAÇÃO DAS TABELAS

CREATE TABLE Comanda (
    id_comanda INT PRIMARY KEY NOT NULL,
    data DATE NOT NULL,
    nr_mesa INT NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL
);

CREATE TABLE Cardapio (
    id_cardapio INT PRIMARY KEY NOT NULL,
    nome_item VARCHAR(100) UNIQUE NOT NULL,
    descricao TEXT,
    preco_unitario DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Item_Comanda (
    id_item_comanda SERIAL PRIMARY KEY,
    quantidade INT NOT NULL,
    id_comanda INT NOT NULL,
    id_cardapio INT NOT NULL,
    FOREIGN KEY (id_comanda) REFERENCES Comanda(id_comanda),
    FOREIGN KEY (id_cardapio) REFERENCES Cardapio(id_cardapio)
);

-- INSERÇÃO DE DADOS NO CARDÁPIO

INSERT INTO Cardapio(id_cardapio, nome_item, descricao, preco_unitario)
VALUES
(1, 'Cappuccino', 'Com leite vaporizado e espuma', 9.00),
(2, 'Bolo de Chocolate', 'Com cobertura ', 6.50),
(3, 'Suco de Laranja', 'Natural e sem açúcar', 5.00),
(4, 'Leite', 'Café com leite vaporizado e espuma leve', 8.50),
(5, 'Bomba', 'Café com chocolate e chantilly', 9.50),
(6, 'Café Gelado', 'Café coado servido com gelo', 7.00),
(7, 'Chá de Hibisco', 'Chá natural com toque cítrico', 6.00),
(8, 'Croissant', 'Massa folhada com manteiga', 5.50),
(9, 'Pão de Queijo', 'Tradicional mineiro, quentinho', 4.00),
(10, 'Torrada com Manteiga', 'Pão com manteiga', 3.50),
(11, 'Bolo de Cenoura', 'Com cobertura de chocolate', 6.00),
(12, 'Torta de Limão', 'Com base crocante e merengue', 7.50),
(13, 'Espresso Duplo', 'Dose dupla de café espresso', 8.00),
(14, 'Chocolate Quente', 'Com leite e cacau cremoso', 7.50),
(15, 'Água com Gás', 'Garrafa 300ml', 3.00),
(16, 'Água sem Gás', 'Garrafa 300ml', 2.50),
(17, 'Suco de Morango', 'Natural, batido na hora', 6.00),
(18, 'Smoothie de Banana', 'Com leite e mel', 7.00);

-- 🧾 INSERÇÃO DE COMANDAS

INSERT INTO Comanda (id_comanda, data, nr_mesa, nome_cliente)
VALUES 
(1, '2025-10-04', 5, 'Ronaldo'),
(2, '2025-10-04', 2, 'Diego'),
(3, '2025-10-04', 3, 'Patricia'),
(4, '2025-10-05', 1, 'Ana Clara'),
(5, '2025-10-05', 2, 'Sérgio'),
(6, '2025-10-05', 3, 'Roberta'),
(7, '2025-10-05', 4, 'Adriana'),
(8, '2025-10-05', 5, 'Edileuza'),
(9, '2025-10-06', 1, 'Suellen'),
(10, '2025-10-06', 2, 'Fernanda'),
(11, '2025-10-06', 3, 'Carlos'),
(12, '2025-10-06', 4, 'Juliana'),
(13, '2025-10-06', 5, 'Marcelo'),
(14, '2025-10-07', 1, 'Bruna'),
(15, '2025-10-07', 2, 'Gustavo'),
(16, '2025-10-07', 3, 'Tatiane'),
(17, '2025-10-07', 4, 'João'),
(18, '2025-10-07', 5, 'Larissa'),
(19, '2025-10-08', 1, 'Vinícius'),
(20, '2025-10-08', 2, 'Camila'),
(21, '2025-10-08', 3, 'Rafael'),
(22, '2025-10-08', 4, 'Isabela'),
(23, '2025-10-08', 5, 'Lucas'),
(24, '2025-10-09', 1, 'Marta'),
(25, '2025-10-09', 2, 'Tiago'),
(26, '2025-10-09', 3, 'Beatriz');

-- INSERÇÃO DE ITENS NAS COMANDAS

INSERT INTO Item_Comanda (quantidade, id_comanda, id_cardapio)
VALUES
(2, 1, 1),  -- ex:Ronaldo pediu 2 Cappuccinos
(1, 2, 3),  -- ex:Diego pediu 1 Suco de Laranja
(1, 1, 4),
(2, 1, 5),
(1, 2, 6),
(1, 2, 7),
(3, 3, 8),
(2, 3, 9),
(1, 1, 10),
(1, 2, 11),
(2, 3, 12),
(1, 1, 13),
(1, 2, 14),
(1, 3, 15),
(1, 1, 16),
(2, 2, 17),
(1, 3, 18);

