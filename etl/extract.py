import pandas as pd
from conexao import conectar_sqlserver


def extract_vendas():
    conn = conectar_sqlserver()

    query = """
    SELECT
        soh.SalesOrderID,
        soh.OrderDate,
        sod.ProductID,
        soh.CustomerID,
        soh.TerritoryID,
        soh.SalesPersonID,
        sod.OrderQty,
        sod.UnitPrice,
        sod.UnitPriceDiscount
    FROM Sales.SalesOrderHeader soh
    JOIN Sales.SalesOrderDetail sod
        ON soh.SalesOrderID = sod.SalesOrderID
    """

    df = pd.read_sql(query, conn)
    conn.close()

    return df