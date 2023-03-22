import mysql.connector

cnx = mysql.connector.connect(user='root',password='password',host='127.0.0.1',database='library')
mycursor = cnx.cursor()

firstn = 'Joseph'
lastn = 'Smith'
email = 'joseph.smith@schooltoday.com'
cell_phone = '159753126'
house = '24'
building = 'Corringham'
street = 'Craven Hill Gardens'
city = 'London'
postcode = 'GN67 9NU'

stored_proc=f'CALL NewMember({firstn}, {lastn}, {email}, {cell_phone}, {house}, {building}, {street}, {city}, {postcode});'

mycursor.execute(stored_proc)

# tell me how many rows I inserted
print(mycursor.rowcount, "record inserted.")

cnx.commit()
cnx.close()
