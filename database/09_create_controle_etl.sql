CREATE TABLE etl.controle_carga (
    id_controle     SERIAL PRIMARY KEY,
    nome_tabela     VARCHAR(100),
    data_inicio     TIMESTAMP,
    data_fim        TIMESTAMP,
    status          VARCHAR(20),
    registros       INT
);