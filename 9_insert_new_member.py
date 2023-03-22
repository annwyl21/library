import mysql.connector

cnx = mysql.connector.connect(user='root',password='password',host='localhost',database='library')
mycursor = cnx.cursor()

firstn = 'Joseph'
lastn = 'Walters'
email = 'joseph.smith@schooltoday.com'
cell_phone = '159753126'
house = '24'
building = 'Corringham'
street = 'CravenHillGardens'
city = 'London'
postcode = 'GN679NU'

args=[firstn, lastn, email, cell_phone, house, building, street, city, postcode]

mycursor.callproc('NewMember', args)

# tell me how many rows I inserted
print(mycursor.rowcount, "record inserted.")

cnx.commit()
cnx.close()
