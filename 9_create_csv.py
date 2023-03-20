# import a module to connect to sql
import mysql.connector

# import a python module to work with data sets
import pandas as pd

# open a local connection to the local server
cnx = mysql.connector.connect(user='root',password='password',host='127.0.0.1',database='library')

# print a line of text to the console to confirm that connection was successful and the program progressed this far
print("started...")

# run my 'stored procedure'
query='CALL SelectFirst3Books();'

# create a variable called results
results=pd.read_sql_query(query, cnx)

# https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.to_csv.html
# take my data and convert it into a csv format and call that csv file 'book_data.csv'
results.to_csv("book_data.csv")

# print the stored data to the console
print(results.head())

# close the connection to the database server
cnx.close()
