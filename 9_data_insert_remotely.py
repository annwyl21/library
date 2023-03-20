# import a module to connect to sql
import mysql.connector

# open a local connection to the local server
cnx = mysql.connector.connect(user='root',password='password',host='127.0.0.1',database='library')

mycursor = cnx.cursor()

cnx.start_transaction()

# https://www.w3schools.com/python/python_mysql_insert.asp
# insert a book into the table remotely
sql = "INSERT into book(title, published, author_id) VALUES(%s, %s, %s)"
values = ('War Doctor Surgery on the Front Line', 2019, 11)
# author David Nott

mycursor.execute(sql, values)

# tell me how many rows I inserted
print(mycursor.rowcount, "record inserted.")

# # optional rollback statement that I can use to check this doesn't fail or screw up
# cnx.rollback()
# print(mycursor.rowcount, "insert rolled back")

# commit my change and close the connection
cnx.commit()
cnx.close()

