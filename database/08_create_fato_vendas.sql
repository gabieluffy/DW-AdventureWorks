CREATE TABLE dw.fato_vendas (
    sk_venda        SERIAL PRIMARY KEY,
    sk_cliente      INT REFERENCES dw.dim_cliente(sk_cliente),
    sk_produto      INT REFERENCES dw.dim_produto(sk_produto),
    sk_vendedor     INT REFERENCES dw.dim_vendedor(sk_vendedor),
    sk_territorio   INT REFERENCES dw.dim_territorio(sk_territorio),
    sk_loja         INT REFERENCES dw.dim_loja(sk_loja),
    sk_tempo        INT REFERENCES dw.dim_tempo(sk_tempo),

    quantidade      INT,
    valor_unitario  NUMERIC(18,2),
    desconto        NUMERIC(18,2),
    valor_total     NUMERIC(18,2)
);