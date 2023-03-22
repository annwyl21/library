import mysql.connector

cnx = mysql.connector.connect(user='root',password='password',host='localhost',database='library')
mycursor = cnx.cursor()

mycursor.callproc('SelectFirst3Books')

for result in mycursor.stored_results():
    print(result.fetchall())

# tell me how many rows I inserted
print(mycursor.rowcount, "record inserted.")

cnx.commit()
cnx.close()
