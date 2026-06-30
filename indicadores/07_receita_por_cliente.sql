SELECT
    c.nome_cliente,
    SUM(f.valor_total) AS receita
FROM dw.fato_vendas f
JOIN dw.dim_cliente c ON f.sk_cliente = c.sk_cliente
GROUP BY c.nome_cliente
ORDER BY receita DESC;