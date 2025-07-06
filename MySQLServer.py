import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="12345678",
    database="alx_book_store"
)

sql = "CREATE DATABASE IF NOT EXISTS alx_book_store"
mycursor = mydb.cursor()

mycursor.execute(sql)
result = mycursor.fetchall()

if result:
    print("Database Connected Successfully")
else:
    print("Unable to connect with the database")


mycursor.close()
mydb.close()