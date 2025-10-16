-- Exercicio 05:  Qual o total de faturamento por data? ordene por data esta consulta.
SELECT 
    c.data,
    SUM(ic.quantidade * ca.preco_unitario) AS faturamento_total
FROM Comanda c
JOIN Item_Comanda ic ON c.id_comanda = ic.id_comanda
JOIN Cardapio ca ON ic.id_cardapio = ca.id_cardapio
GROUP BY c.data
ORDER BY c.data;
