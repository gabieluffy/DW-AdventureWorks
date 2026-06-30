from conexao import conectar_postgres


def load_fato_vendas(df):
    conn = conectar_postgres()
    cur = conn.cursor()

    for _, row in df.iterrows():
        cur.execute("""
            INSERT INTO dw.fato_vendas (
                sk_cliente,
                sk_produto,
                sk_vendedor,
                sk_territorio,
                sk_loja,
                sk_tempo,
                quantidade,
                valor_unitario,
                desconto,
                valor_total
            )
            VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
        """, (
            row["nk_cliente"],
            row["nk_produto"],
            row["nk_vendedor"],
            row["nk_territorio"],
            None,  # loja (pode evoluir depois)
            None,  # tempo (vamos mapear na próxima etapa)
            row["quantidade"],
            row["valor_unitario"],
            row["desconto"],
            row["valor_total"]
        ))

    conn.commit()
    cur.close()
    conn.close()