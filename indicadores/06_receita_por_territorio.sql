SELECT
    te.nome_territorio,
    SUM(f.valor_total) AS receita
FROM dw.fato_vendas f
JOIN dw.dim_territorio te ON f.sk_territorio = te.sk_territorio
GROUP BY te.nome_territorio
ORDER BY receita DESC;