-- Exercicio 03:  Liste todas as comandas (código, data, mesa e nome do cliente) mais uma coluna com o valor total da comanda. Ordene por data esta listagem;
SELECT 
    c.id_comanda,
    c.data,
    c.nr_mesa,
    c.nome_cliente,
    SUM(ic.quantidade * ca.preco_unitario) AS valor_total
FROM Comanda c
JOIN Item_Comanda ic ON c.id_comanda = ic.id_comanda
JOIN Cardapio ca ON ic.id_cardapio = ca.id_cardapio
GROUP BY c.id_comanda, c.data, c.nr_mesa, c.nome_cliente
ORDER BY c.data;
