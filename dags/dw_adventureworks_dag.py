from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime, timedelta

from etl.extract import extract_vendas
from etl.transform import transformar_vendas
from etl.load import load_fato_vendas


default_args = {
    "owner": "dw_team",
    "depends_on_past": False,
    "retries": 2,
    "retry_delay": timedelta(minutes=5)
}


def task_extract(**context):
    df = extract_vendas()
    context["ti"].xcom_push(key="raw_data", value=df.to_json())


def task_transform(**context):
    import pandas as pd

    raw = context["ti"].xcom_pull(key="raw_data")
    df = pd.read_json(raw)

    df_tratado = transformar_vendas(df)

    context["ti"].xcom_push(
        key="transformed_data",
        value=df_tratado.to_json()
    )


def task_load(**context):
    import pandas as pd

    data = context["ti"].xcom_pull(key="transformed_data")
    df = pd.read_json(data)

    load_fato_vendas(df)


with DAG(
    dag_id="dw_adventureworks_pipeline",
    default_args=default_args,
    description="Pipeline ETL AdventureWorks OLTP -> DW PostgreSQL",
    start_date=datetime(2024, 1, 1),
    schedule_interval="@daily",
    catchup=False,
    tags=["dw", "etl", "adventureworks"]
) as dag:

    extract = PythonOperator(
        task_id="extract_vendas",
        python_callable=task_extract
    )

    transform = PythonOperator(
        task_id="transform_vendas",
        python_callable=task_transform
    )

    load = PythonOperator(
        task_id="load_fato_vendas",
        python_callable=task_load
    )

    extract >> transform >> load