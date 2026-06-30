SELECT
    p.nome_produto,
    SUM(f.quantidade) AS quantidade_vendida
FROM dw.fato_vendas f
JOIN dw.dim_produto p ON f.sk_produto = p.sk_produto
GROUP BY p.nome_produto
ORDER BY quantidade_vendida DESC;