#import pyodbc
#import mysqlclient
import pandas as pd

import mysql.connector

cnx = mysql.connector.connect(user='root', password='password',
                              host='127.0.0.1',
                              database='library')


# https://learn.microsoft.com/en-us/sql/connect/python/pyodbc/step-3-proof-of-concept-connecting-to-sql-using-pyodbc?view=sql-server-ver16
# server = 'localhost\sqlexpress' # for a named instance
# server = 'myserver,port' # to specify an alternate port
# server = '127.0.0.1' 
# database = 'library'
# # ENCRYPT defaults to yes starting in ODBC Driver 18. It's good to always specify ENCRYPT=yes on the client side to avoid MITM attacks.
# connection_string = 'Driver={MySQL ODBC 8.0 ANSI Driver};Server=localhost;Database=library;User=root;Password=password;Socket=MySQL;Option=3;'
# print(connection_string)
# cnxn = pyodbc.connect(connection_string)
# cursor = cnxn.cursor()

print("started...")


# # https://youtu.be/KrldVzkpRBI
query='CALL SelectFirst3Books();'

results=pd.read_sql_query(query, cnx)
results.to_csv("book_data.csv", index=False)
print(results)
print("completed")

cnx.close()
