CREATE TABLE dw.dim_cliente (
    sk_cliente        SERIAL PRIMARY KEY,
    nk_cliente        INT NOT NULL,
    nome_cliente      VARCHAR(150),
    genero            VARCHAR(20),
    estado_civil      VARCHAR(30),
    data_nascimento   DATE,
    email             VARCHAR(150),
    cidade            VARCHAR(100),
    estado            VARCHAR(50),
    pais              VARCHAR(50),
    data_inicio       DATE DEFAULT CURRENT_DATE,
    data_fim          DATE,
    ativo             BOOLEAN DEFAULT TRUE
);