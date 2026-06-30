SELECT
    SUM(valor_total) / COUNT(*) AS ticket_medio
FROM dw.fato_vendas;