import pyodbc
import psycopg2

def conectar_sqlserver():
    conn = pyodbc.connect(
        "DRIVER={ODBC Driver 17 for SQL Server};"
        "SERVER=localhost;"
        "DATABASE=AdventureWorks;"
        "Trusted_Connection=yes;"
    )
    return conn

def conectar_postgres():
    conn = psycopg2.connect(
        host="localhost",
        database="dw_adventureworks",
        user="postgres",
        password="postgres",
        port="5432"
    )
    return conn