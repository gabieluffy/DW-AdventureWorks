CREATE TABLE dw.dim_loja (
    sk_loja      SERIAL PRIMARY KEY,
    nk_loja      INT NOT NULL,
    nome_loja    VARCHAR(150),
    cidade       VARCHAR(100),
    estado       VARCHAR(50),
    pais         VARCHAR(50)
);