import pandas as pd


def transformar_vendas(df):

    df["valor_total"] = (
        df["OrderQty"] * df["UnitPrice"]
    ) - df["UnitPriceDiscount"]

    df = df.rename(columns={
        "CustomerID": "nk_cliente",
        "ProductID": "nk_produto",
        "SalesPersonID": "nk_vendedor",
        "TerritoryID": "nk_territorio",
        "OrderQty": "quantidade",
        "UnitPrice": "valor_unitario",
        "UnitPriceDiscount": "desconto"
    })

    return df