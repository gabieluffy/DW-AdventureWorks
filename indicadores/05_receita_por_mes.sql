SELECT
    t.ano,
    t.mes,
    SUM(f.valor_total) AS receita
FROM dw.fato_vendas f
JOIN dw.dim_tempo t ON f.sk_tempo = t.sk_tempo
GROUP BY t.ano, t.mes
ORDER BY t.ano, t.mes;