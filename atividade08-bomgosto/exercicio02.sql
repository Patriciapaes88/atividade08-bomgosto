-- Exercicio 02:  Apresente todas as comandas (código, data, mesa e nome do cliente) e os itens da comanda (código comanda, nome do café, descricão, quantidade, preço unitário e preço total do café) destas ordenados data e código da comanda e, também o nome do café;

SELECT 
    c.id_comanda,
    c.data,
    c.nr_mesa,
    c.nome_cliente,
    ca.nome_item,
    ca.descricao,
    ic.quantidade,
    ca.preco_unitario,
    (ic.quantidade * ca.preco_unitario) AS preco_total
FROM Comanda c
JOIN Item_Comanda ic ON c.id_comanda = ic.id_comanda
JOIN Cardapio ca ON ic.id_cardapio = ca.id_cardapio
ORDER BY c.data, c.id_comanda, ca.nome_item;
