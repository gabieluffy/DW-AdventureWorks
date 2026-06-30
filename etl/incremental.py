import pandas as pd
from conexao import conectar_postgres


def get_ultima_carga():
    conn = conectar_postgres()

    query = """
    SELECT MAX(data_fim)
    FROM etl.controle_carga
    WHERE nome_tabela = 'fato_vendas'
    """

    df = pd.read_sql(query, conn)
    conn.close()

    return df.iloc[0,0]