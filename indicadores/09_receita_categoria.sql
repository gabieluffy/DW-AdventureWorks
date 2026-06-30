SELECT
    p.categoria,
    SUM(f.valor_total) AS receita
FROM dw.fato_vendas f
JOIN dw.dim_produto p ON f.sk_produto = p.sk_produto
GROUP BY p.categoria
ORDER BY receita DESC;