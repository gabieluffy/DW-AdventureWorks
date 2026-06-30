CREATE TABLE dw.dim_vendedor (
    sk_vendedor    SERIAL PRIMARY KEY,
    nk_vendedor    INT NOT NULL,
    nome_vendedor  VARCHAR(150),
    loja           VARCHAR(150),
    territorio     VARCHAR(100),
    data_inicio    DATE DEFAULT CURRENT_DATE,
    data_fim       DATE,
    ativo          BOOLEAN DEFAULT TRUE
);