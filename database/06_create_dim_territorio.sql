CREATE TABLE dw.dim_territorio (
    sk_territorio   SERIAL PRIMARY KEY,
    nk_territorio   INT NOT NULL,
    nome_territorio VARCHAR(100),
    regiao          VARCHAR(100),
    pais            VARCHAR(100)
);