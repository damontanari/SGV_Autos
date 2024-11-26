import psycopg2
import pyodbc 
from numpy import number
import pandas as pd
import psycopg2
import pyodbc 
from datetime import timedelta
import datetime
import time

#----------------------------------------------------------------------------------------------------------------#

# Definindo as datas
data = datetime.datetime.now()
data -= datetime.timedelta(days=1)
data_anterior = data.strftime("%Y-%m-%d")
data_anterior_select = data.strftime("%Y%m%d")
data_atual = datetime.datetime.now().strftime("%Y-%m-%d")
ultima_atualizacao = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
dia = datetime.datetime.now().strftime("%d")
mes = datetime.datetime.now().strftime("%m")
ano = data.strftime("%Y")
mes_venda = f'{mes} - {datetime.datetime.now().strftime("%B")}' # %B Serve para coletar o nome do mes referenciado

data_inicio = f'{ano}-{mes}-01'
data_inicio_select = f'{ano}{mes}01'
data_fim = datetime.datetime.now()
ultimo_dia_do_mes = data_fim + MonthEnd(0)
data_final =  str(ultimo_dia_do_mes)[:10]

# Calcula o número de dias que precisamos adicionar para chegar a sexta-feira
dias_para_sexta = (1 - data.weekday()) % 7
sexta_feira = data - timedelta(days=dias_para_sexta)
ultima_sexta_feira = sexta_feira.strftime('%Y%m%d')

#----------------------------------------------------------------------------------------------------------------#

# Conexão com banco de dados (nome banco de dados)
server = 'server_host'
database = 'nome_database'
connection_string = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};Trusted_Connection=yes;'
db_con = pyodbc.connect(connection_string)
cursor = db_con.cursor()

#----------------------------------------------------------------------------------------------------------------#

# Verificar se a data de venda já existe no banco de dados
cursor.execute(f"""SELECT COUNT(*) FROM "tabela_bd" WHERE COL_MÊS = '{data_inicio}'""")
count = cursor.fetchone()[0]
print(count)
if count > 0:
    # Se existir, deletar os registros para a data de venda atual
    cursor.execute(f"""DELETE FROM "tabela_bd" WHERE COL_MÊS = '{data_inicio}'""")
    db_con.commit()
    print(f"Registros para a data {data_anterior} deletados.")

#----------------------------------------------------------------------------------------------------------------#

# Inserção no banco de dados ("NOME BANCO DE DADOS")
inicio = time.time()
for index, row in "nome_banco".iterrows():
    sql = """INSERT INTO "BANCODEDADOS" (
                COL1, 
                COL2, 
                COL3,
                ...
                COL_MÊS
            ) 
            VALUES (?,?,?,?,?)"""
    
    val = (
        row['COL1'], 
        row['COL2'], 
        row['COL3'],
        row['COL_MÊS']
    )
    
    cursor.execute(sql, val)
    db_con.commit()

final = time.time()
print('Dados inseridos com sucesso')
print(f'Tempo de processamento: {int(final-inicio)} segundo(s).')