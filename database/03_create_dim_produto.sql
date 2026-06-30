CREATE TABLE dw.dim_produto (
    sk_produto        SERIAL PRIMARY KEY,
    nk_produto        INT NOT NULL,
    nome_produto      VARCHAR(200),
    categoria         VARCHAR(100),
    subcategoria      VARCHAR(100),
    marca             VARCHAR(100),
    cor               VARCHAR(50),
    custo             NUMERIC(18,2),
    preco             NUMERIC(18,2),
    data_inicio       DATE DEFAULT CURRENT_DATE,
    data_fim          DATE,
    ativo             BOOLEAN DEFAULT TRUE
);