# 📊 Data Warehouse AdventureWorks (OLTP SQL Server → DW PostgreSQL)

## 📌 Descrição do Projeto

Este projeto implementa um **Data Warehouse (DW)** baseado no banco **AdventureWorks (SQL Server)**, utilizando arquitetura **ETL com Python e orquestração via Apache Airflow**, com armazenamento final em **PostgreSQL**.

O objetivo é transformar dados transacionais (OLTP) em informações analíticas (OLAP), aplicando o modelo **Star Schema**.

---

## 🏗️ Arquitetura

- **Fonte de Dados (OLTP):** SQL Server (AdventureWorks)
- **ETL:** Python (pandas + pyodbc + psycopg2)
- **Orquestração:** Apache Airflow
- **Destino (DW):** PostgreSQL

---

## 📐 Modelo de Dados

Modelo dimensional do tipo **Star Schema** contendo:

### 📌 Tabelas dimensão:
- dim_cliente
- dim_produto
- dim_tempo
- dim_vendedor
- dim_territorio
- dim_loja

### 📌 Tabela fato:
- fato_vendas

---

## 🔄 Pipeline ETL

1. Extração de dados do SQL Server
2. Transformação com pandas
3. Cálculo de métricas (valor total, descontos)
4. Carga no PostgreSQL
5. Controle de execução via Airflow

---

## ⚙️ Tecnologias Utilizadas

- Python 3.x
- SQL Server (AdventureWorks)
- PostgreSQL
- Apache Airflow
- Pandas
- PyODBC
- Psycopg2

---

## 📊 Indicadores (KPIs)

O projeto disponibiliza 10 indicadores analíticos:

- Receita total
- Quantidade de pedidos
- Ticket médio
- Receita por ano
- Receita por mês
- Receita por território
- Receita por cliente
- Produtos mais vendidos
- Receita por categoria
- Total de descontos

---

## 🚀 Como Executar

### 1. Instalar dependências
```bash
pip install -r requirements.txt
