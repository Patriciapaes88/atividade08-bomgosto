-- Exercicio 04:Faça a mesma listagem das comandas da questão anterior (6), mas traga apenas as comandas que possuem mais do que um tipo de café na comanda;

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
HAVING COUNT(DISTINCT ca.id_cardapio) > 1
ORDER BY c.data;
