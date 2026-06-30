CREATE TABLE dw.dim_tempo (
    sk_tempo      SERIAL PRIMARY KEY,
    data          DATE NOT NULL,
    dia           INT,
    mes           INT,
    ano           INT,
    trimestre     INT,
    nome_mes      VARCHAR(20),
    dia_semana    VARCHAR(20)
);